import '../entities/order.dart';
import '../entities/payment_method.dart';
import '../entities/user_account.dart';

abstract class OrderRepository {
  Future<Order> getOrderDetails(String orderId);

  Future<UserAccount> getUserAccount();

  Future<void> makePayment({
    required String orderId,
    required PaymentMethod method,
    required double totalSum,
    String? requisite,
  });
}
