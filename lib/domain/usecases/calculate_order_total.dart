import '../entities/order.dart';

class CalculateOrderTotalUseCase {
  double call(Order order) {
    double total = 0.0;

    for (final product in order.products) {
      total += product.price * product.count;

      for (final ingredient in product.extraIngredients) {
        total += ingredient.ingredientPrice * ingredient.count;
      }
    }

    total += order.deliveryCost;

    return total;
  }
}
