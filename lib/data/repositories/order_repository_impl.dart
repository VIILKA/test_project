import 'package:dio/dio.dart';

import '../../../domain/entities/order.dart';
import '../../../domain/entities/payment_method.dart';
import '../../../domain/entities/user_account.dart';
import '../../../domain/repositories/order_repository.dart';
import '../datasources/order_data_source.dart';
import '../models/order_model.dart';
import '../models/user_account_model.dart';

class OrderRepositoryImpl implements OrderRepository {
  final OrderDataSource dataSource;

  OrderRepositoryImpl({required this.dataSource});

  @override
  Future<Order> getOrderDetails(String orderId) async {
    final model = await _mapDataSourceErrors(
      () => dataSource.getOrderDetails(orderId),
    );
    return model.toEntity();
  }

  @override
  Future<UserAccount> getUserAccount() async {
    final model = await _mapDataSourceErrors(dataSource.getUserAccount);
    return model.toEntity();
  }

  @override
  Future<void> makePayment({
    required String orderId,
    required PaymentMethod method,
    required double totalSum,
    String? requisite,
  }) async {
    return _mapDataSourceErrors(
      () => dataSource.makePayment(
        orderId: orderId,
        method: method,
        totalSum: totalSum,
        requisite: requisite,
      ),
    );
  }

  Future<T> _mapDataSourceErrors<T>(Future<T> Function() action) async {
    try {
      return await action();
    } on DioException catch (e) {
      throw Exception(_extractDioMessage(e));
    }
  }

  String _extractDioMessage(DioException e) {
    final data = e.response?.data;
    if (data is Map && data['message'] != null) {
      return data['message'].toString();
    }
    if (e.error != null) {
      return e.error.toString();
    }
    return e.message ?? 'Ошибка сети';
  }
}
