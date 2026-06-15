import 'package:flutter/material.dart';
import '../../../domain/entities/payment_method.dart';
import 'payment_method_icon.dart';

class PaymentMethodSelector extends StatelessWidget {
  final PaymentMethod? selectedMethod;
  final VoidCallback onTap;

  const PaymentMethodSelector({
    super.key,
    required this.selectedMethod,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                if (selectedMethod != null) ...[
                  PaymentMethodIcon(method: selectedMethod!),
                  const SizedBox(width: 4),
                ],
                Text(
                  selectedMethod != null
                      ? selectedMethod!.displayName
                      : 'Выберите метод оплаты',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const Icon(Icons.chevron_right, color: Colors.black, size: 28),
          ],
        ),
      ),
    );
  }
}
