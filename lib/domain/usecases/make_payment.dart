import '../entities/payment_method.dart';
import '../repositories/order_repository.dart';

class MakePaymentUseCase {
  final OrderRepository repository;

  MakePaymentUseCase(this.repository);

  Future<void> call({
    required String orderId,
    required PaymentMethod method,
    required double totalSum,
    String? requisite,
  }) {
    return repository.makePayment(
      orderId: orderId,
      method: method,
      totalSum: totalSum,
      requisite: requisite,
    );
  }
}
