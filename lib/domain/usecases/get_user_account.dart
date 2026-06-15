import '../entities/user_account.dart';
import '../repositories/order_repository.dart';

class GetUserAccountUseCase {
  final OrderRepository repository;

  GetUserAccountUseCase(this.repository);

  Future<UserAccount> call() {
    return repository.getUserAccount();
  }
}
