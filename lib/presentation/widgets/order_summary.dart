import 'package:flutter/material.dart';
import '../../../domain/entities/order.dart';
import '../../../core/utils/currency_formatter.dart';

class OrderSummary extends StatelessWidget {
  final Order order;
  final double totalSum;

  const OrderSummary({super.key, required this.order, required this.totalSum});

  @override
  Widget build(BuildContext context) {
    if (order.products.isEmpty) {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Text(
          'Ваша корзина пуста',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Продукты',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          ...order.products.map((p) => _buildProductItem(p)),
          const Divider(height: 32),
          _buildSummaryRow(
            'Всего товаров (${order.products.length})',
            _calculateProductsSum(),
          ),
          _buildSummaryRow(
            'Дополнительно: ${_calculateExtrasCount()}',
            _calculateExtrasSum(),
          ),
          _buildSummaryRow('Доставка', order.deliveryCost),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Итого',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '${totalSum.toCurrency()} С',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProductItem(Product product) {
    final productSum = product.price * product.count;

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${product.name} x ${product.count}',
                style: const TextStyle(fontSize: 14),
              ),
              Text(
                '${productSum.toCurrency()} С',
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
          if (product.extraIngredients.isNotEmpty) ...[
            const SizedBox(height: 8),
            ...product.extraIngredients.map((e) {
              final ingredientSum = e.ingredientPrice * e.count;

              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '+ ${e.ingredientName} x ${e.count}',
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  Text(
                    '${ingredientSum.toCurrency()} С',
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              );
            }),
          ],
        ],
      ),
    );
  }

  double _calculateProductsSum() {
    return order.products.fold(0, (sum, p) => sum + (p.price * p.count));
  }

  int _calculateExtrasCount() {
    return order.products.fold(
      0,
      (count, p) => count + p.extraIngredients.fold(0, (c, e) => c + e.count),
    );
  }

  double _calculateExtrasSum() {
    return order.products.fold(
      0,
      (sum, p) =>
          sum +
          p.extraIngredients.fold(
            0,
            (s, e) => s + (e.ingredientPrice * e.count),
          ),
    );
  }

  Widget _buildSummaryRow(String title, double value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(color: Colors.grey, fontSize: 14)),
          Text(
            '${value.toCurrency()} С',
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
