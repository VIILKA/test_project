import 'package:flutter/material.dart';
import '../../../domain/entities/payment_method.dart';
import '../../../core/utils/currency_formatter.dart';
import 'payment_method_icon.dart';

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
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
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
    final bottomPadding = MediaQuery.viewPaddingOf(context).bottom;

    return Container(
      height: 240 + bottomPadding,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Padding(
        padding: EdgeInsets.only(bottom: bottomPadding),
        child: Column(
          children: [
            _Header(onClose: () => Navigator.pop(context)),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Column(children: _items(context)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _items(BuildContext context) {
    if (availableMethods.isEmpty) {
      return const [
        Padding(
          padding: EdgeInsets.all(16),
          child: Text('Нет доступных методов оплаты'),
        ),
      ];
    }

    return [
      if (availableMethods.contains(PaymentMethod.account))
        _accountItem(context),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            if (availableMethods.contains(PaymentMethod.mbank))
              _PaymentMethodRow(
                method: PaymentMethod.mbank,
                selected: selectedMethod == PaymentMethod.mbank,
                onTap: () => Navigator.pop(context, PaymentMethod.mbank),
              ),
            if (availableMethods.contains(PaymentMethod.oDengi))
              _PaymentMethodRow(
                method: PaymentMethod.oDengi,
                selected: selectedMethod == PaymentMethod.oDengi,
                onTap: () => Navigator.pop(context, PaymentMethod.oDengi),
              ),
            if (availableMethods.contains(PaymentMethod.cash))
              _PaymentMethodRow(
                method: PaymentMethod.cash,
                selected: selectedMethod == PaymentMethod.cash,
                onTap: () => Navigator.pop(context, PaymentMethod.cash),
              ),
          ],
        ),
      ),
    ];
  }

  Widget _accountItem(BuildContext context) {
    final disabled = accountBalance == null || accountBalance! < totalSum;
    final subtitle = accountBalance == null
        ? 'Аккаунт отсутствует'
        : '${accountBalance!.toCurrency()} С';

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: _PaymentMethodRow(
        method: PaymentMethod.account,
        selected: selectedMethod == PaymentMethod.account,
        subtitle: subtitle,
        disabled: disabled,
        height: 48,
        onTap: disabled
            ? null
            : () => Navigator.pop(context, PaymentMethod.account),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final VoidCallback onClose;

  const _Header({required this.onClose});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Color(0xFFD5D5D5), width: 1),
            ),
          ),
          child: Row(
            children: [
              const Expanded(
                child: Text(
                  'Метод оплаты',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: 24,
                height: 24,
                child: IconButton(
                  onPressed: onClose,
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.close, size: 24, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PaymentMethodRow extends StatelessWidget {
  final PaymentMethod method;
  final bool selected;
  final String? subtitle;
  final bool disabled;
  final double height;
  final VoidCallback? onTap;

  const _PaymentMethodRow({
    required this.method,
    required this.selected,
    this.subtitle,
    this.disabled = false,
    this.height = 40,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: selected
                ? Border.all(color: const Color(0xFF2738ED), width: 1)
                : null,
          ),
          child: Row(
            children: [
              PaymentMethodIcon(method: method, disabled: disabled),
              const SizedBox(width: 4),
              Expanded(
                child: subtitle == null
                    ? Text(method.displayName, style: _titleStyle)
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(method.displayName, style: _titleStyle),
                          Text(subtitle!, style: _subtitleStyle),
                        ],
                      ),
              ),
              Icon(
                selected
                    ? Icons.radio_button_checked
                    : Icons.radio_button_unchecked,
                size: 28,
                color: selected
                    ? const Color(0xFF2738ED)
                    : const Color(0xFF778397),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle get _titleStyle {
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: disabled ? const Color(0xFF778397) : Colors.black,
      height: 1.1,
    );
  }

  TextStyle get _subtitleStyle {
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: disabled ? const Color(0xFF778397) : Colors.black,
      height: 1.1,
    );
  }
}
