import '../../../domain/entities/payment_method.dart';
import '../order_data_source.dart';
import '../../models/order_model.dart';
import '../../models/user_account_model.dart';

class MockOrderDataSource implements OrderDataSource {
  @override
  Future<OrderModel> getOrderDetails(String orderId) async {
    await Future.delayed(const Duration(seconds: 1));

    return const OrderModel(
      id: '12345',
      availablePaymentMethods: ['MBANK', 'O_DENGI', 'ACCOUNT', 'CASH'],
      deliveryCost: 190.0,
      products: [
        ProductModel(
          name: 'Бургер',
          price: 2000.0,
          count: 1,
          extraIngredients: [
            ExtraIngredientModel(
              ingredientName: 'Сыр',
              count: 1,
              ingredientPrice: 30.0,
            ),
          ],
        ),
        ProductModel(name: 'Картошка фри', price: 150.0, count: 1),
      ],
    );
  }

  @override
  Future<UserAccountModel> getUserAccount() async {
    await Future.delayed(const Duration(seconds: 1));
    return const UserAccountModel(id: '18182920202', balance: 100.0);
  }

  @override
  Future<void> makePayment({
    required String orderId,
    required PaymentMethod method,
    required double totalSum,
    String? requisite,
  }) async {
    await Future.delayed(const Duration(seconds: 2));

    if (method == PaymentMethod.mbank || method == PaymentMethod.oDengi) {
      throw Exception('Ошибка оплаты. Попробуйте позже');
    }

    if (method == PaymentMethod.account) {
      final account = await getUserAccount();
      if (account.balance < totalSum) {
        throw Exception('Недостаточно средств');
      }
    }
  }
}
