import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/order.dart';
import '../../../domain/entities/payment_method.dart';
import '../../../domain/entities/user_account.dart';

part 'payment_state.freezed.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = _Initial;

  const factory PaymentState.loading() = _Loading;

  const factory PaymentState.error({required String message}) = _Error;

  const factory PaymentState.content({
    required Order order,
    required double totalSum,
    PaymentMethod? selectedMethod,
    String? phone,
    UserAccount? userAccount,
    @Default(false) bool isPaymentProcessing,
    String? validationError,
    String? paymentError,
    @Default(false) bool isSuccess,
  }) = _Content;
}

extension PaymentStateX on PaymentState {
  bool get requiresPhone {
    return mapOrNull(
          content: (state) =>
              state.selectedMethod == PaymentMethod.mbank ||
              state.selectedMethod == PaymentMethod.oDengi,
        ) ??
        false;
  }

  bool get canPay {
    return mapOrNull(
          content: (state) {
            final method = state.selectedMethod;
            if (method == null || state.isPaymentProcessing) {
              return false;
            }

            if (!state.order.availablePaymentMethods.contains(method)) {
              return false;
            }

            if (method == PaymentMethod.mbank ||
                method == PaymentMethod.oDengi) {
              final phone = (state.phone ?? '').replaceAll(RegExp(r'\D'), '');
              if (phone.length != 12 || !phone.startsWith('996')) {
                return false;
              }
            }

            if (method == PaymentMethod.account) {
              final balance = state.userAccount?.balance;
              if (balance == null || balance < state.totalSum) {
                return false;
              }
            }

            return true;
          },
        ) ??
        false;
  }
}
