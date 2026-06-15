import '../../../domain/entities/payment_method.dart';
import '../models/order_model.dart';
import '../models/user_account_model.dart';

abstract class OrderDataSource {
  Future<OrderModel> getOrderDetails(String orderId);

  Future<UserAccountModel> getUserAccount();

  Future<void> makePayment({
    required String orderId,
    required PaymentMethod method,
    required double totalSum,
    String? requisite,
  });
}
