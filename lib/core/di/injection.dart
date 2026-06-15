import '../config/app_config.dart';
import '../network/api_client.dart';
import '../../data/datasources/order_data_source.dart';
import '../../data/datasources/mock/mock_order_data_source.dart';
import '../../data/datasources/remote/remote_order_data_source.dart';
import '../../data/repositories/order_repository_impl.dart';
import '../../domain/repositories/order_repository.dart';
import '../../domain/usecases/calculate_order_total.dart';
import '../../domain/usecases/get_order_details.dart';
import '../../domain/usecases/get_user_account.dart';
import '../../domain/usecases/make_payment.dart';
import '../../domain/usecases/validate_phone.dart';

class Injection {
  static final Injection _instance = Injection._internal();
  factory Injection() => _instance;
  Injection._internal();

  late final ApiClient apiClient;
  late final OrderDataSource orderDataSource;
  late final OrderRepository orderRepository;

  late final GetOrderDetailsUseCase getOrderDetails;
  late final GetUserAccountUseCase getUserAccount;
  late final MakePaymentUseCase makePayment;
  late final CalculateOrderTotalUseCase calculateOrderTotal;
  late final ValidatePhoneUseCase validatePhone;

  void init() {
    apiClient = ApiClient();

    if (AppConfig.dataSourceType == DataSourceType.mock) {
      orderDataSource = MockOrderDataSource();
    } else {
      orderDataSource = RemoteOrderDataSource(apiClient: apiClient);
    }

    orderRepository = OrderRepositoryImpl(dataSource: orderDataSource);

    getOrderDetails = GetOrderDetailsUseCase(orderRepository);
    getUserAccount = GetUserAccountUseCase(orderRepository);
    makePayment = MakePaymentUseCase(orderRepository);
    calculateOrderTotal = CalculateOrderTotalUseCase();
    validatePhone = ValidatePhoneUseCase();
  }
}

final di = Injection();
