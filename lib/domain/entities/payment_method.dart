enum PaymentMethod {
  oDengi,
  mbank,
  account,
  cash;

  static PaymentMethod? fromString(String value) {
    switch (value) {
      case 'O_DENGI':
        return PaymentMethod.oDengi;
      case 'MBANK':
        return PaymentMethod.mbank;
      case 'ACCOUNT':
        return PaymentMethod.account;
      case 'CASH':
        return PaymentMethod.cash;
      default:
        return null;
    }
  }

  String get displayName {
    switch (this) {
      case PaymentMethod.oDengi:
        return 'O!';
      case PaymentMethod.mbank:
        return 'Mbank';
      case PaymentMethod.account:
        return 'Внутренний кошелек';
      case PaymentMethod.cash:
        return 'Наличными';
    }
  }
}
