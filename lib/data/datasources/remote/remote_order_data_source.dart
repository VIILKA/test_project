import '../../../core/network/api_client.dart';
import '../../../core/network/api_endpoints.dart';
import '../../../domain/entities/payment_method.dart';
import '../order_data_source.dart';
import '../../models/order_model.dart';
import '../../models/user_account_model.dart';

class RemoteOrderDataSource implements OrderDataSource {
  final ApiClient apiClient;

  RemoteOrderDataSource({required this.apiClient});

  @override
  Future<OrderModel> getOrderDetails(String orderId) async {
    final response = await apiClient.dio.get(
      '${ApiEndpoints.orderDetails}/$orderId',
    );
    final data = Map<String, dynamic>.from(response.data);
    return OrderModel.fromJson(data).copyWith(id: orderId);
  }

  @override
  Future<UserAccountModel> getUserAccount() async {
    final response = await apiClient.dio.get(ApiEndpoints.userAccount);
    return UserAccountModel.fromJson(response.data);
  }

  @override
  Future<void> makePayment({
    required String orderId,
    required PaymentMethod method,
    required double totalSum,
    String? requisite,
  }) async {
    String endpoint;
    Map<String, dynamic> data = {'totalSum': totalSum};

    switch (method) {
      case PaymentMethod.mbank:
        endpoint = '${ApiEndpoints.paymentMbank}/$orderId';
        data['requisite'] = requisite;
        break;
      case PaymentMethod.oDengi:
        endpoint = '${ApiEndpoints.paymentOdengi}/$orderId';
        data['requisite'] = requisite;
        break;
      case PaymentMethod.account:
        endpoint = '${ApiEndpoints.paymentAccount}/$orderId';
        data['requisite'] = requisite;
        break;
      case PaymentMethod.cash:
        endpoint = '${ApiEndpoints.paymentCash}/$orderId';
        break;
    }

    await apiClient.dio.post(endpoint, data: data);
  }
}
