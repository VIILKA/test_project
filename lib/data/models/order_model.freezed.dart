// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderModel {

 String get id; List<String> get availablePaymentMethods; double get deliveryCost; List<ProductModel> get products;
/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderModelCopyWith<OrderModel> get copyWith => _$OrderModelCopyWithImpl<OrderModel>(this as OrderModel, _$identity);

  /// Serializes this OrderModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.availablePaymentMethods, availablePaymentMethods)&&(identical(other.deliveryCost, deliveryCost) || other.deliveryCost == deliveryCost)&&const DeepCollectionEquality().equals(other.products, products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(availablePaymentMethods),deliveryCost,const DeepCollectionEquality().hash(products));

@override
String toString() {
  return 'OrderModel(id: $id, availablePaymentMethods: $availablePaymentMethods, deliveryCost: $deliveryCost, products: $products)';
}


}

/// @nodoc
abstract mixin class $OrderModelCopyWith<$Res>  {
  factory $OrderModelCopyWith(OrderModel value, $Res Function(OrderModel) _then) = _$OrderModelCopyWithImpl;
@useResult
$Res call({
 String id, List<String> availablePaymentMethods, double deliveryCost, List<ProductModel> products
});




}
/// @nodoc
class _$OrderModelCopyWithImpl<$Res>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._self, this._then);

  final OrderModel _self;
  final $Res Function(OrderModel) _then;

/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? availablePaymentMethods = null,Object? deliveryCost = null,Object? products = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,availablePaymentMethods: null == availablePaymentMethods ? _self.availablePaymentMethods : availablePaymentMethods // ignore: cast_nullable_to_non_nullable
as List<String>,deliveryCost: null == deliveryCost ? _self.deliveryCost : deliveryCost // ignore: cast_nullable_to_non_nullable
as double,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderModel].
extension OrderModelPatterns on OrderModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<String> availablePaymentMethods,  double deliveryCost,  List<ProductModel> products)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
return $default(_that.id,_that.availablePaymentMethods,_that.deliveryCost,_that.products);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<String> availablePaymentMethods,  double deliveryCost,  List<ProductModel> products)  $default,) {final _that = this;
switch (_that) {
case _OrderModel():
return $default(_that.id,_that.availablePaymentMethods,_that.deliveryCost,_that.products);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<String> availablePaymentMethods,  double deliveryCost,  List<ProductModel> products)?  $default,) {final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
return $default(_that.id,_that.availablePaymentMethods,_that.deliveryCost,_that.products);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderModel implements OrderModel {
  const _OrderModel({this.id = '', required final  List<String> availablePaymentMethods, required this.deliveryCost, required final  List<ProductModel> products}): _availablePaymentMethods = availablePaymentMethods,_products = products;
  factory _OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);

@override@JsonKey() final  String id;
 final  List<String> _availablePaymentMethods;
@override List<String> get availablePaymentMethods {
  if (_availablePaymentMethods is EqualUnmodifiableListView) return _availablePaymentMethods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availablePaymentMethods);
}

@override final  double deliveryCost;
 final  List<ProductModel> _products;
@override List<ProductModel> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}


/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderModelCopyWith<_OrderModel> get copyWith => __$OrderModelCopyWithImpl<_OrderModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._availablePaymentMethods, _availablePaymentMethods)&&(identical(other.deliveryCost, deliveryCost) || other.deliveryCost == deliveryCost)&&const DeepCollectionEquality().equals(other._products, _products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_availablePaymentMethods),deliveryCost,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'OrderModel(id: $id, availablePaymentMethods: $availablePaymentMethods, deliveryCost: $deliveryCost, products: $products)';
}


}

/// @nodoc
abstract mixin class _$OrderModelCopyWith<$Res> implements $OrderModelCopyWith<$Res> {
  factory _$OrderModelCopyWith(_OrderModel value, $Res Function(_OrderModel) _then) = __$OrderModelCopyWithImpl;
@override @useResult
$Res call({
 String id, List<String> availablePaymentMethods, double deliveryCost, List<ProductModel> products
});




}
/// @nodoc
class __$OrderModelCopyWithImpl<$Res>
    implements _$OrderModelCopyWith<$Res> {
  __$OrderModelCopyWithImpl(this._self, this._then);

  final _OrderModel _self;
  final $Res Function(_OrderModel) _then;

/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? availablePaymentMethods = null,Object? deliveryCost = null,Object? products = null,}) {
  return _then(_OrderModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,availablePaymentMethods: null == availablePaymentMethods ? _self._availablePaymentMethods : availablePaymentMethods // ignore: cast_nullable_to_non_nullable
as List<String>,deliveryCost: null == deliveryCost ? _self.deliveryCost : deliveryCost // ignore: cast_nullable_to_non_nullable
as double,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,
  ));
}


}


/// @nodoc
mixin _$ProductModel {

 String get name; double get price; int get count; List<ExtraIngredientModel> get extraIngredients;
/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductModelCopyWith<ProductModel> get copyWith => _$ProductModelCopyWithImpl<ProductModel>(this as ProductModel, _$identity);

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductModel&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.extraIngredients, extraIngredients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,price,count,const DeepCollectionEquality().hash(extraIngredients));

@override
String toString() {
  return 'ProductModel(name: $name, price: $price, count: $count, extraIngredients: $extraIngredients)';
}


}

/// @nodoc
abstract mixin class $ProductModelCopyWith<$Res>  {
  factory $ProductModelCopyWith(ProductModel value, $Res Function(ProductModel) _then) = _$ProductModelCopyWithImpl;
@useResult
$Res call({
 String name, double price, int count, List<ExtraIngredientModel> extraIngredients
});




}
/// @nodoc
class _$ProductModelCopyWithImpl<$Res>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._self, this._then);

  final ProductModel _self;
  final $Res Function(ProductModel) _then;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? price = null,Object? count = null,Object? extraIngredients = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,extraIngredients: null == extraIngredients ? _self.extraIngredients : extraIngredients // ignore: cast_nullable_to_non_nullable
as List<ExtraIngredientModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductModel].
extension ProductModelPatterns on ProductModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  double price,  int count,  List<ExtraIngredientModel> extraIngredients)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that.name,_that.price,_that.count,_that.extraIngredients);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  double price,  int count,  List<ExtraIngredientModel> extraIngredients)  $default,) {final _that = this;
switch (_that) {
case _ProductModel():
return $default(_that.name,_that.price,_that.count,_that.extraIngredients);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  double price,  int count,  List<ExtraIngredientModel> extraIngredients)?  $default,) {final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that.name,_that.price,_that.count,_that.extraIngredients);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductModel implements ProductModel {
  const _ProductModel({required this.name, required this.price, required this.count, final  List<ExtraIngredientModel> extraIngredients = const []}): _extraIngredients = extraIngredients;
  factory _ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

@override final  String name;
@override final  double price;
@override final  int count;
 final  List<ExtraIngredientModel> _extraIngredients;
@override@JsonKey() List<ExtraIngredientModel> get extraIngredients {
  if (_extraIngredients is EqualUnmodifiableListView) return _extraIngredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_extraIngredients);
}


/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductModelCopyWith<_ProductModel> get copyWith => __$ProductModelCopyWithImpl<_ProductModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductModel&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._extraIngredients, _extraIngredients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,price,count,const DeepCollectionEquality().hash(_extraIngredients));

@override
String toString() {
  return 'ProductModel(name: $name, price: $price, count: $count, extraIngredients: $extraIngredients)';
}


}

/// @nodoc
abstract mixin class _$ProductModelCopyWith<$Res> implements $ProductModelCopyWith<$Res> {
  factory _$ProductModelCopyWith(_ProductModel value, $Res Function(_ProductModel) _then) = __$ProductModelCopyWithImpl;
@override @useResult
$Res call({
 String name, double price, int count, List<ExtraIngredientModel> extraIngredients
});




}
/// @nodoc
class __$ProductModelCopyWithImpl<$Res>
    implements _$ProductModelCopyWith<$Res> {
  __$ProductModelCopyWithImpl(this._self, this._then);

  final _ProductModel _self;
  final $Res Function(_ProductModel) _then;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? price = null,Object? count = null,Object? extraIngredients = null,}) {
  return _then(_ProductModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,extraIngredients: null == extraIngredients ? _self._extraIngredients : extraIngredients // ignore: cast_nullable_to_non_nullable
as List<ExtraIngredientModel>,
  ));
}


}


/// @nodoc
mixin _$ExtraIngredientModel {

 String get ingredientName; int get count; double get ingredientPrice;
/// Create a copy of ExtraIngredientModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtraIngredientModelCopyWith<ExtraIngredientModel> get copyWith => _$ExtraIngredientModelCopyWithImpl<ExtraIngredientModel>(this as ExtraIngredientModel, _$identity);

  /// Serializes this ExtraIngredientModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtraIngredientModel&&(identical(other.ingredientName, ingredientName) || other.ingredientName == ingredientName)&&(identical(other.count, count) || other.count == count)&&(identical(other.ingredientPrice, ingredientPrice) || other.ingredientPrice == ingredientPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ingredientName,count,ingredientPrice);

@override
String toString() {
  return 'ExtraIngredientModel(ingredientName: $ingredientName, count: $count, ingredientPrice: $ingredientPrice)';
}


}

/// @nodoc
abstract mixin class $ExtraIngredientModelCopyWith<$Res>  {
  factory $ExtraIngredientModelCopyWith(ExtraIngredientModel value, $Res Function(ExtraIngredientModel) _then) = _$ExtraIngredientModelCopyWithImpl;
@useResult
$Res call({
 String ingredientName, int count, double ingredientPrice
});




}
/// @nodoc
class _$ExtraIngredientModelCopyWithImpl<$Res>
    implements $ExtraIngredientModelCopyWith<$Res> {
  _$ExtraIngredientModelCopyWithImpl(this._self, this._then);

  final ExtraIngredientModel _self;
  final $Res Function(ExtraIngredientModel) _then;

/// Create a copy of ExtraIngredientModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ingredientName = null,Object? count = null,Object? ingredientPrice = null,}) {
  return _then(_self.copyWith(
ingredientName: null == ingredientName ? _self.ingredientName : ingredientName // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,ingredientPrice: null == ingredientPrice ? _self.ingredientPrice : ingredientPrice // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ExtraIngredientModel].
extension ExtraIngredientModelPatterns on ExtraIngredientModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExtraIngredientModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExtraIngredientModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExtraIngredientModel value)  $default,){
final _that = this;
switch (_that) {
case _ExtraIngredientModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExtraIngredientModel value)?  $default,){
final _that = this;
switch (_that) {
case _ExtraIngredientModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String ingredientName,  int count,  double ingredientPrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExtraIngredientModel() when $default != null:
return $default(_that.ingredientName,_that.count,_that.ingredientPrice);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String ingredientName,  int count,  double ingredientPrice)  $default,) {final _that = this;
switch (_that) {
case _ExtraIngredientModel():
return $default(_that.ingredientName,_that.count,_that.ingredientPrice);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String ingredientName,  int count,  double ingredientPrice)?  $default,) {final _that = this;
switch (_that) {
case _ExtraIngredientModel() when $default != null:
return $default(_that.ingredientName,_that.count,_that.ingredientPrice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExtraIngredientModel implements ExtraIngredientModel {
  const _ExtraIngredientModel({required this.ingredientName, required this.count, required this.ingredientPrice});
  factory _ExtraIngredientModel.fromJson(Map<String, dynamic> json) => _$ExtraIngredientModelFromJson(json);

@override final  String ingredientName;
@override final  int count;
@override final  double ingredientPrice;

/// Create a copy of ExtraIngredientModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExtraIngredientModelCopyWith<_ExtraIngredientModel> get copyWith => __$ExtraIngredientModelCopyWithImpl<_ExtraIngredientModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExtraIngredientModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExtraIngredientModel&&(identical(other.ingredientName, ingredientName) || other.ingredientName == ingredientName)&&(identical(other.count, count) || other.count == count)&&(identical(other.ingredientPrice, ingredientPrice) || other.ingredientPrice == ingredientPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ingredientName,count,ingredientPrice);

@override
String toString() {
  return 'ExtraIngredientModel(ingredientName: $ingredientName, count: $count, ingredientPrice: $ingredientPrice)';
}


}

/// @nodoc
abstract mixin class _$ExtraIngredientModelCopyWith<$Res> implements $ExtraIngredientModelCopyWith<$Res> {
  factory _$ExtraIngredientModelCopyWith(_ExtraIngredientModel value, $Res Function(_ExtraIngredientModel) _then) = __$ExtraIngredientModelCopyWithImpl;
@override @useResult
$Res call({
 String ingredientName, int count, double ingredientPrice
});




}
/// @nodoc
class __$ExtraIngredientModelCopyWithImpl<$Res>
    implements _$ExtraIngredientModelCopyWith<$Res> {
  __$ExtraIngredientModelCopyWithImpl(this._self, this._then);

  final _ExtraIngredientModel _self;
  final $Res Function(_ExtraIngredientModel) _then;

/// Create a copy of ExtraIngredientModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ingredientName = null,Object? count = null,Object? ingredientPrice = null,}) {
  return _then(_ExtraIngredientModel(
ingredientName: null == ingredientName ? _self.ingredientName : ingredientName // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,ingredientPrice: null == ingredientPrice ? _self.ingredientPrice : ingredientPrice // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
