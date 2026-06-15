import '../entities/order.dart';
import '../repositories/order_repository.dart';

class GetOrderDetailsUseCase {
  final OrderRepository repository;

  GetOrderDetailsUseCase(this.repository);

  Future<Order> call(String orderId) {
    return repository.getOrderDetails(orderId);
  }
}
