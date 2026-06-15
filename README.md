
Источник данных меняется вот тут в `lib/core/config/app_config.dart`:


Это для моковых данных
```dart
static const DataSourceType dataSourceType = DataSourceType.mock;
```

А это для запуска с типа реальным API
```dart
static const DataSourceType dataSourceType = DataSourceType.remote;
static const String baseUrl = 'https://your-api.example/v1/';
```

Внедренения зависимостей я решил делать без get_it, просто через Injection и настраивается в `lib/core/di/injection.dart`. После переключения `DataSourceType` экран оплаты продолжает работать через тот же repository/use case/BLoC контракт.

