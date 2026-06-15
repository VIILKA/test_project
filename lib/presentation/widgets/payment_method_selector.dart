import 'package:flutter/material.dart';
import '../../../domain/entities/payment_method.dart';

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
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              selectedMethod != null
                  ? selectedMethod!.displayName
                  : 'Выберите метод оплаты',
              style: TextStyle(
                fontSize: 16,
                fontWeight: selectedMethod != null
                    ? FontWeight.w600
                    : FontWeight.w400,
                color: Colors.black87,
              ),
            ),
            const Icon(Icons.chevron_right, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
