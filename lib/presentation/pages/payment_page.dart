import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/di/injection.dart';
import '../bloc/payment_bloc.dart';
import '../bloc/payment_event.dart';
import '../bloc/payment_state.dart';
import '../widgets/error_dialog.dart';
import '../widgets/order_summary.dart';
import '../widgets/pay_button.dart';
import '../widgets/payment_method_bottom_sheet.dart';
import '../widgets/payment_method_selector.dart';
import '../widgets/phone_input_field.dart';

class PaymentPage extends StatelessWidget {
  final String orderId;

  const PaymentPage({super.key, required this.orderId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PaymentBloc(
        getOrderDetails: di.getOrderDetails,
        calculateOrderTotal: di.calculateOrderTotal,
        getUserAccount: di.getUserAccount,
        makePayment: di.makePayment,
        validatePhone: di.validatePhone,
      )..add(PaymentEvent.started(orderId: orderId)),
      child: _PaymentPageBody(orderId: orderId),
    );
  }
}

class _PaymentPageBody extends StatelessWidget {
  final String orderId;

  const _PaymentPageBody({required this.orderId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8FB),
      appBar: AppBar(
        title: const Text(
          'Оплата заказа',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: BlocConsumer<PaymentBloc, PaymentState>(
        listener: (context, state) {
          state.mapOrNull(
            content: (c) {
              if (c.paymentError != null) {
                final bloc = context.read<PaymentBloc>();
                ErrorDialog.show(context, c.paymentError!).then((_) {
                  bloc.add(const PaymentEvent.paymentErrorDismissed());
                });
              } else if (c.isSuccess) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Оплата успешно завершена!'),
                    backgroundColor: Colors.green,
                  ),
                );
              }
            },
          );
        },
        builder: (context, state) {
          return state.map(
            initial: (_) => const SizedBox.shrink(),
            loading: (_) => const Center(child: CircularProgressIndicator()),
            error: (e) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, color: Colors.red, size: 48),
                  const SizedBox(height: 16),
                  Text(e.message),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => context.read<PaymentBloc>().add(
                      PaymentEvent.started(orderId: orderId),
                    ),
                    child: const Text('Повторить'),
                  ),
                ],
              ),
            ),
            content: (content) {
              return Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          PaymentMethodSelector(
                            selectedMethod: content.selectedMethod,
                            onTap: () async {
                              final method =
                                  await PaymentMethodBottomSheet.show(
                                    context,
                                    selected: content.selectedMethod,
                                    availableMethods:
                                        content.order.availablePaymentMethods,
                                    accountBalance:
                                        content.userAccount?.balance,
                                    totalSum: content.totalSum,
                                  );
                              if (method != null && context.mounted) {
                                context.read<PaymentBloc>().add(
                                  PaymentEvent.paymentMethodSelected(
                                    method: method,
                                  ),
                                );
                              }
                            },
                          ),
                          if (state.requiresPhone) ...[
                            const SizedBox(height: 16),
                            PhoneInputField(
                              errorText: content.validationError,
                              onChanged: (val) => context
                                  .read<PaymentBloc>()
                                  .add(PaymentEvent.phoneChanged(phone: val)),
                            ),
                          ],
                          const SizedBox(height: 16),
                          OrderSummary(
                            order: content.order,
                            totalSum: content.totalSum,
                          ),
                          const SizedBox(height: 24),
                        ],
                      ),
                    ),
                  ),
                  SafeArea(
                    top: false,
                    child: Container(
                      width: double.infinity,
                      color: const Color(0xFFF8F8FB),
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                      child: PayButton(
                        isLoading: content.isPaymentProcessing,
                        onPressed: state.canPay
                            ? () => context.read<PaymentBloc>().add(
                                const PaymentEvent.payButtonPressed(),
                              )
                            : null,
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
