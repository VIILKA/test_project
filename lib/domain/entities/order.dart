import 'payment_method.dart';

class Order {
  final String id;
  final List<PaymentMethod> availablePaymentMethods;
  final double deliveryCost;
  final List<Product> products;

  const Order({
    required this.id,
    required this.availablePaymentMethods,
    required this.deliveryCost,
    required this.products,
  });
}

class Product {
  final String name;
  final double price;
  final int count;
  final List<ExtraIngredient> extraIngredients;

  const Product({
    required this.name,
    required this.price,
    required this.count,
    this.extraIngredients = const [],
  });
}

class ExtraIngredient {
  final String ingredientName;
  final int count;
  final double ingredientPrice;

  const ExtraIngredient({
    required this.ingredientName,
    required this.count,
    required this.ingredientPrice,
  });
}
