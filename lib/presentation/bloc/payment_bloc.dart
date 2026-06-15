import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbank_test_project/domain/entities/user_account.dart';
import '../../../domain/entities/payment_method.dart';
import '../../../domain/usecases/calculate_order_total.dart';
import '../../../domain/usecases/get_order_details.dart';
import '../../../domain/usecases/get_user_account.dart';
import '../../../domain/usecases/make_payment.dart';
import '../../../domain/usecases/validate_phone.dart';
import 'payment_event.dart';
import 'payment_state.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final GetOrderDetailsUseCase _getOrderDetails;
  final CalculateOrderTotalUseCase _calculateOrderTotal;
  final GetUserAccountUseCase _getUserAccount;
  final MakePaymentUseCase _makePayment;
  final ValidatePhoneUseCase _validatePhone;

  PaymentBloc({
    required GetOrderDetailsUseCase getOrderDetails,
    required CalculateOrderTotalUseCase calculateOrderTotal,
    required GetUserAccountUseCase getUserAccount,
    required MakePaymentUseCase makePayment,
    required ValidatePhoneUseCase validatePhone,
  }) : _getOrderDetails = getOrderDetails,
       _calculateOrderTotal = calculateOrderTotal,
       _getUserAccount = getUserAccount,
       _makePayment = makePayment,
       _validatePhone = validatePhone,
       super(const PaymentState.initial()) {
    on<Started>(_onStarted);
    on<PaymentMethodSelected>(_onPaymentMethodSelected);
    on<PhoneChanged>(_onPhoneChanged);
    on<PayButtonPressed>(_onPayButtonPressed);
    on<PaymentErrorDismissed>(_onPaymentErrorDismissed);
  }

  Future<void> _onStarted(Started event, Emitter<PaymentState> emit) async {
    emit(const PaymentState.loading());
    try {
      final order = await _getOrderDetails(event.orderId);
      final totalSum = _calculateOrderTotal(order);
      final account = await _loadUserAccountOrNull();

      emit(
        PaymentState.content(
          order: order,
          totalSum: totalSum,
          userAccount: account,
        ),
      );
    } catch (e) {
      emit(
        const PaymentState.error(
          message: 'Ошибка загрузки заказа. Попробуйте позже.',
        ),
      );
    }
  }

  void _onPaymentMethodSelected(
    PaymentMethodSelected event,
    Emitter<PaymentState> emit,
  ) {
    final currentState = state.mapOrNull(content: (c) => c);
    if (currentState == null) return;
    if (currentState.isPaymentProcessing) return;
    if (!currentState.order.availablePaymentMethods.contains(event.method)) {
      return;
    }

    emit(
      currentState.copyWith(
        selectedMethod: event.method,
        paymentError: null,
        validationError: null,
      ),
    );
  }

  void _onPhoneChanged(PhoneChanged event, Emitter<PaymentState> emit) {
    final currentState = state.mapOrNull(content: (c) => c);
    if (currentState == null) return;

    emit(
      currentState.copyWith(
        phone: event.phone,
        validationError: null,
        paymentError: null,
      ),
    );
  }

  Future<void> _onPayButtonPressed(
    PayButtonPressed event,
    Emitter<PaymentState> emit,
  ) async {
    final currentState = state.mapOrNull(content: (c) => c);
    if (currentState == null) return;
    if (currentState.isPaymentProcessing) return;

    final method = currentState.selectedMethod;
    if (method == null) {
      emit(currentState.copyWith(paymentError: 'Выберите метод оплаты'));
      return;
    }
    if (!currentState.order.availablePaymentMethods.contains(method)) {
      emit(currentState.copyWith(paymentError: 'Метод оплаты недоступен'));
      return;
    }

    String? requisite;
    if (method == PaymentMethod.mbank || method == PaymentMethod.oDengi) {
      final phone = (currentState.phone ?? '').replaceAll(RegExp(r'\D'), '');
      if (!_validatePhone(phone)) {
        emit(
          currentState.copyWith(
            validationError: 'Введите корректный номер телефона',
          ),
        );
        return;
      }
      requisite = phone;
    }

    if (method == PaymentMethod.account) {
      final account = currentState.userAccount;
      if (account == null) {
        emit(currentState.copyWith(paymentError: 'Аккаунт отсутствует'));
        return;
      }

      final balance = account.balance;
      if (balance < currentState.totalSum) {
        emit(
          currentState.copyWith(
            paymentError: 'Недостаточно средств на балансе',
          ),
        );
        return;
      }
      requisite = account.id;
    }

    emit(currentState.copyWith(isPaymentProcessing: true, paymentError: null));

    try {
      await _makePayment(
        orderId: currentState.order.id,
        method: method,
        totalSum: currentState.totalSum,
        requisite: requisite,
      );

      emit(currentState.copyWith(isPaymentProcessing: false, isSuccess: true));
    } catch (e) {
      String errorMessage = 'Произошла ошибка при оплате';
      if (e is Exception) {
        errorMessage = e.toString().replaceAll('Exception: ', '');
      }

      emit(
        currentState.copyWith(
          isPaymentProcessing: false,
          paymentError: errorMessage,
        ),
      );
    }
  }

  Future<UserAccount?> _loadUserAccountOrNull() async {
    try {
      return await _getUserAccount();
    } catch (_) {
      return null;
    }
  }

  void _onPaymentErrorDismissed(
    PaymentErrorDismissed event,
    Emitter<PaymentState> emit,
  ) {
    final currentState = state.mapOrNull(content: (c) => c);
    if (currentState == null) return;

    emit(currentState.copyWith(paymentError: null));
  }
}
