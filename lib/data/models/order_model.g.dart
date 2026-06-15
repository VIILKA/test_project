// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => _OrderModel(
  id: json['id'] as String? ?? '',
  availablePaymentMethods: (json['availablePaymentMethods'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  deliveryCost: (json['deliveryCost'] as num).toDouble(),
  products: (json['products'] as List<dynamic>)
      .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$OrderModelToJson(_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'availablePaymentMethods': instance.availablePaymentMethods,
      'deliveryCost': instance.deliveryCost,
      'products': instance.products,
    };

_ProductModel _$ProductModelFromJson(Map<String, dynamic> json) =>
    _ProductModel(
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      count: (json['count'] as num).toInt(),
      extraIngredients:
          (json['extraIngredients'] as List<dynamic>?)
              ?.map(
                (e) => ExtraIngredientModel.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ProductModelToJson(_ProductModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'count': instance.count,
      'extraIngredients': instance.extraIngredients,
    };

_ExtraIngredientModel _$ExtraIngredientModelFromJson(
  Map<String, dynamic> json,
) => _ExtraIngredientModel(
  ingredientName: json['ingredientName'] as String,
  count: (json['count'] as num).toInt(),
  ingredientPrice: (json['ingredientPrice'] as num).toDouble(),
);

Map<String, dynamic> _$ExtraIngredientModelToJson(
  _ExtraIngredientModel instance,
) => <String, dynamic>{
  'ingredientName': instance.ingredientName,
  'count': instance.count,
  'ingredientPrice': instance.ingredientPrice,
};
