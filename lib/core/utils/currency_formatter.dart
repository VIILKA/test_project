extension CurrencyFormatter on double {
  String toCurrency() {
    final str = toStringAsFixed(0);
    return str.replaceAll(RegExp(r'\B(?=(\d{3})+(?!\d))'), ' ');
  }
}
