import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/payment_method.dart';

part 'payment_event.freezed.dart';

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.started({required String orderId}) = Started;
  const factory PaymentEvent.paymentMethodSelected({
    required PaymentMethod method,
  }) = PaymentMethodSelected;
  const factory PaymentEvent.phoneChanged({required String phone}) =
      PhoneChanged;
  const factory PaymentEvent.payButtonPressed() = PayButtonPressed;
  const factory PaymentEvent.paymentErrorDismissed() = PaymentErrorDismissed;
}
