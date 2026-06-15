enum DataSourceType { mock, remote }

class AppConfig {
  static const DataSourceType dataSourceType = DataSourceType.mock;

  static const String baseUrl = 'https://api.example-mbank.com/v1/';
}
