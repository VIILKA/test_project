import 'package:flutter/material.dart';
import '../../../domain/entities/order.dart';
import '../../../core/utils/currency_formatter.dart';

class OrderSummary extends StatelessWidget {
  final Order order;

  const OrderSummary({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    if (order.products.isEmpty) {
      return Container(
        width: double.infinity,
        height: 96,
        color: Colors.white,
        padding: const EdgeInsets.all(16),
        child: const Center(
          child: Text(
            'Ваша корзина пуста',
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xFF53525F)),
          ),
        ),
      );
    }

    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: Text(
              'Продукты',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 16),
          ...order.products.indexed.map((entry) {
            final isLast = entry.$1 == order.products.length - 1;
            return Padding(
              padding: EdgeInsets.only(bottom: isLast ? 0 : 8),
              child: _buildProductItem(entry.$2),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildProductItem(Product product) {
    final productSum = product.price * product.count;
    final hasExtras = product.extraIngredients.isNotEmpty;

    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF8F8FB),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Column(
        children: [
          _OrderLine(
            title: product.name,
            count: product.count,
            price: productSum,
          ),
          if (hasExtras) ...[
            const SizedBox(height: 8),
            const Divider(height: 1, color: Color(0xFFD5D5D5)),
            const SizedBox(height: 8),
            ...product.extraIngredients.map(
              (e) => _OrderLine(
                title: 'Дополнительно: ${e.ingredientName}',
                count: e.count,
                price: e.ingredientPrice * e.count,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class OrderTotals extends StatelessWidget {
  final Order order;
  final double totalSum;

  const OrderTotals({super.key, required this.order, required this.totalSum});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 104,
      child: Column(
        children: [
          _SummaryRow(
            title: 'Всего товаров (${_calculateProductsCount()})',
            value: _calculateProductsSum(),
          ),
          const SizedBox(height: 2),
          _SummaryRow(
            title: 'Дополнительно: ${_calculateExtrasCount()}',
            value: _calculateExtrasSum(),
          ),
          const SizedBox(height: 2),
          _SummaryRow(title: 'Доставка', value: order.deliveryCost),
          const Spacer(),
          const Divider(height: 1, color: Color(0xFFD5D5D5)),
          const SizedBox(height: 16),
          _SummaryRow(
            title: 'Итого',
            value: totalSum,
            titleStyle: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: Colors.black,
              height: 1,
            ),
            valueStyle: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: Colors.black,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }

  int _calculateProductsCount() {
    return order.products.fold(0, (sum, product) => sum + product.count);
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
}

class _OrderLine extends StatelessWidget {
  final String title;
  final int count;
  final double price;

  const _OrderLine({
    required this.title,
    required this.count,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 1.15,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  '$count шт',
                  style: const TextStyle(
                    color: Color(0xFF53525F),
                    fontSize: 14,
                    height: 1,
                  ),
                ),
              ],
            ),
          ),
          Text(
            '${price.toCurrency()} С',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              height: 1.15,
            ),
          ),
        ],
      ),
    );
  }
}

class _SummaryRow extends StatelessWidget {
  final String title;
  final double value;
  final TextStyle? titleStyle;
  final TextStyle? valueStyle;

  const _SummaryRow({
    required this.title,
    required this.value,
    this.titleStyle,
    this.valueStyle,
  });

  @override
  Widget build(BuildContext context) {
    final defaultStyle = const TextStyle(
      color: Colors.black,
      fontSize: 14,
      height: 1.15,
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: titleStyle ?? defaultStyle),
        Text('${value.toCurrency()} С', style: valueStyle ?? defaultStyle),
      ],
    );
  }
}
