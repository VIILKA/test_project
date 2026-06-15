import 'package:flutter/material.dart';
import '../../../domain/entities/payment_method.dart';
import '../../../core/utils/currency_formatter.dart';

class PaymentMethodBottomSheet extends StatelessWidget {
  final PaymentMethod? selectedMethod;
  final List<PaymentMethod> availableMethods;
  final double? accountBalance;
  final double totalSum;

  const PaymentMethodBottomSheet({
    super.key,
    required this.selectedMethod,
    required this.availableMethods,
    required this.accountBalance,
    required this.totalSum,
  });

  static Future<PaymentMethod?> show(
    BuildContext context, {
    PaymentMethod? selected,
    required List<PaymentMethod> availableMethods,
    required double? accountBalance,
    required double totalSum,
  }) {
    return showModalBottomSheet<PaymentMethod>(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) => PaymentMethodBottomSheet(
        selectedMethod: selected,
        availableMethods: availableMethods,
        accountBalance: accountBalance,
        totalSum: totalSum,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Метод оплаты',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            if (availableMethods.isEmpty)
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text('Нет доступных методов оплаты'),
              ),
            if (availableMethods.contains(PaymentMethod.account))
              accountBalance == null
                  ? _buildUnavailableItem(
                      'Внутренний кошелек\nАккаунт отсутствует',
                      Icons.account_balance_wallet_outlined,
                    )
                  : accountBalance! < totalSum
                  ? _buildUnavailableItem(
                      'Внутренний кошелек\nНедостаточно средств',
                      Icons.account_balance_wallet_outlined,
                    )
                  : _buildItem(
                      context,
                      PaymentMethod.account,
                      'Внутренний кошелек\n${accountBalance!.toCurrency()} С',
                      Icons.account_balance_wallet_outlined,
                    ),
            if (availableMethods.contains(PaymentMethod.mbank))
              _buildItem(
                context,
                PaymentMethod.mbank,
                'Mbank',
                Icons.account_balance,
              ),
            if (availableMethods.contains(PaymentMethod.oDengi))
              _buildItem(
                context,
                PaymentMethod.oDengi,
                'O!',
                Icons.monetization_on,
              ),
            if (availableMethods.contains(PaymentMethod.cash))
              _buildItem(context, PaymentMethod.cash, 'Наличными', Icons.money),
          ],
        ),
      ),
    );
  }

  Widget _buildItem(
    BuildContext context,
    PaymentMethod method,
    String title,
    IconData icon,
  ) {
    final isSelected = selectedMethod == method;
    return ListTile(
      leading: Icon(icon, color: isSelected ? Colors.blue : Colors.grey),
      title: Text(title),
      trailing: isSelected
          ? const Icon(Icons.radio_button_checked, color: Colors.blue)
          : const Icon(Icons.radio_button_unchecked, color: Colors.grey),
      onTap: () => Navigator.pop(context, method),
    );
  }

  Widget _buildUnavailableItem(String title, IconData icon) {
    return ListTile(
      enabled: false,
      leading: Icon(icon, color: Colors.grey.shade400),
      title: Text(title),
      trailing: Icon(Icons.block, color: Colors.grey.shade400),
    );
  }
}
