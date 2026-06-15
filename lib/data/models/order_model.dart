import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/order.dart';
import '../../../domain/entities/payment_method.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
abstract class OrderModel with _$OrderModel {
  const factory OrderModel({
    @Default('') String id,
    required List<String> availablePaymentMethods,
    required double deliveryCost,
    required List<ProductModel> products,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}

extension OrderModelX on OrderModel {
  Order toEntity() {
    return Order(
      id: id,
      availablePaymentMethods: availablePaymentMethods
          .map((e) => PaymentMethod.fromString(e))
          .whereType<PaymentMethod>()
          .toList(),
      deliveryCost: deliveryCost,
      products: products.map((e) => e.toEntity()).toList(),
    );
  }
}

@freezed
abstract class ProductModel with _$ProductModel {
  const factory ProductModel({
    required String name,
    required double price,
    required int count,
    @Default([]) List<ExtraIngredientModel> extraIngredients,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

extension ProductModelX on ProductModel {
  Product toEntity() {
    return Product(
      name: name,
      price: price,
      count: count,
      extraIngredients: extraIngredients.map((e) => e.toEntity()).toList(),
    );
  }
}

@freezed
abstract class ExtraIngredientModel with _$ExtraIngredientModel {
  const factory ExtraIngredientModel({
    required String ingredientName,
    required int count,
    required double ingredientPrice,
  }) = _ExtraIngredientModel;

  factory ExtraIngredientModel.fromJson(Map<String, dynamic> json) =>
      _$ExtraIngredientModelFromJson(json);
}

extension ExtraIngredientModelX on ExtraIngredientModel {
  ExtraIngredient toEntity() {
    return ExtraIngredient(
      ingredientName: ingredientName,
      count: count,
      ingredientPrice: ingredientPrice,
    );
  }
}
