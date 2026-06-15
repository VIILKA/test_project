// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaymentEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentEvent()';
}


}

/// @nodoc
class $PaymentEventCopyWith<$Res>  {
$PaymentEventCopyWith(PaymentEvent _, $Res Function(PaymentEvent) __);
}


/// Adds pattern-matching-related methods to [PaymentEvent].
extension PaymentEventPatterns on PaymentEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Started value)?  started,TResult Function( PaymentMethodSelected value)?  paymentMethodSelected,TResult Function( PhoneChanged value)?  phoneChanged,TResult Function( PayButtonPressed value)?  payButtonPressed,TResult Function( PaymentErrorDismissed value)?  paymentErrorDismissed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Started() when started != null:
return started(_that);case PaymentMethodSelected() when paymentMethodSelected != null:
return paymentMethodSelected(_that);case PhoneChanged() when phoneChanged != null:
return phoneChanged(_that);case PayButtonPressed() when payButtonPressed != null:
return payButtonPressed(_that);case PaymentErrorDismissed() when paymentErrorDismissed != null:
return paymentErrorDismissed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Started value)  started,required TResult Function( PaymentMethodSelected value)  paymentMethodSelected,required TResult Function( PhoneChanged value)  phoneChanged,required TResult Function( PayButtonPressed value)  payButtonPressed,required TResult Function( PaymentErrorDismissed value)  paymentErrorDismissed,}){
final _that = this;
switch (_that) {
case Started():
return started(_that);case PaymentMethodSelected():
return paymentMethodSelected(_that);case PhoneChanged():
return phoneChanged(_that);case PayButtonPressed():
return payButtonPressed(_that);case PaymentErrorDismissed():
return paymentErrorDismissed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Started value)?  started,TResult? Function( PaymentMethodSelected value)?  paymentMethodSelected,TResult? Function( PhoneChanged value)?  phoneChanged,TResult? Function( PayButtonPressed value)?  payButtonPressed,TResult? Function( PaymentErrorDismissed value)?  paymentErrorDismissed,}){
final _that = this;
switch (_that) {
case Started() when started != null:
return started(_that);case PaymentMethodSelected() when paymentMethodSelected != null:
return paymentMethodSelected(_that);case PhoneChanged() when phoneChanged != null:
return phoneChanged(_that);case PayButtonPressed() when payButtonPressed != null:
return payButtonPressed(_that);case PaymentErrorDismissed() when paymentErrorDismissed != null:
return paymentErrorDismissed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String orderId)?  started,TResult Function( PaymentMethod method)?  paymentMethodSelected,TResult Function( String phone)?  phoneChanged,TResult Function()?  payButtonPressed,TResult Function()?  paymentErrorDismissed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Started() when started != null:
return started(_that.orderId);case PaymentMethodSelected() when paymentMethodSelected != null:
return paymentMethodSelected(_that.method);case PhoneChanged() when phoneChanged != null:
return phoneChanged(_that.phone);case PayButtonPressed() when payButtonPressed != null:
return payButtonPressed();case PaymentErrorDismissed() when paymentErrorDismissed != null:
return paymentErrorDismissed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String orderId)  started,required TResult Function( PaymentMethod method)  paymentMethodSelected,required TResult Function( String phone)  phoneChanged,required TResult Function()  payButtonPressed,required TResult Function()  paymentErrorDismissed,}) {final _that = this;
switch (_that) {
case Started():
return started(_that.orderId);case PaymentMethodSelected():
return paymentMethodSelected(_that.method);case PhoneChanged():
return phoneChanged(_that.phone);case PayButtonPressed():
return payButtonPressed();case PaymentErrorDismissed():
return paymentErrorDismissed();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String orderId)?  started,TResult? Function( PaymentMethod method)?  paymentMethodSelected,TResult? Function( String phone)?  phoneChanged,TResult? Function()?  payButtonPressed,TResult? Function()?  paymentErrorDismissed,}) {final _that = this;
switch (_that) {
case Started() when started != null:
return started(_that.orderId);case PaymentMethodSelected() when paymentMethodSelected != null:
return paymentMethodSelected(_that.method);case PhoneChanged() when phoneChanged != null:
return phoneChanged(_that.phone);case PayButtonPressed() when payButtonPressed != null:
return payButtonPressed();case PaymentErrorDismissed() when paymentErrorDismissed != null:
return paymentErrorDismissed();case _:
  return null;

}
}

}

/// @nodoc


class Started implements PaymentEvent {
  const Started({required this.orderId});
  

 final  String orderId;

/// Create a copy of PaymentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StartedCopyWith<Started> get copyWith => _$StartedCopyWithImpl<Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Started&&(identical(other.orderId, orderId) || other.orderId == orderId));
}


@override
int get hashCode => Object.hash(runtimeType,orderId);

@override
String toString() {
  return 'PaymentEvent.started(orderId: $orderId)';
}


}

/// @nodoc
abstract mixin class $StartedCopyWith<$Res> implements $PaymentEventCopyWith<$Res> {
  factory $StartedCopyWith(Started value, $Res Function(Started) _then) = _$StartedCopyWithImpl;
@useResult
$Res call({
 String orderId
});




}
/// @nodoc
class _$StartedCopyWithImpl<$Res>
    implements $StartedCopyWith<$Res> {
  _$StartedCopyWithImpl(this._self, this._then);

  final Started _self;
  final $Res Function(Started) _then;

/// Create a copy of PaymentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? orderId = null,}) {
  return _then(Started(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PaymentMethodSelected implements PaymentEvent {
  const PaymentMethodSelected({required this.method});
  

 final  PaymentMethod method;

/// Create a copy of PaymentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentMethodSelectedCopyWith<PaymentMethodSelected> get copyWith => _$PaymentMethodSelectedCopyWithImpl<PaymentMethodSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentMethodSelected&&(identical(other.method, method) || other.method == method));
}


@override
int get hashCode => Object.hash(runtimeType,method);

@override
String toString() {
  return 'PaymentEvent.paymentMethodSelected(method: $method)';
}


}

/// @nodoc
abstract mixin class $PaymentMethodSelectedCopyWith<$Res> implements $PaymentEventCopyWith<$Res> {
  factory $PaymentMethodSelectedCopyWith(PaymentMethodSelected value, $Res Function(PaymentMethodSelected) _then) = _$PaymentMethodSelectedCopyWithImpl;
@useResult
$Res call({
 PaymentMethod method
});




}
/// @nodoc
class _$PaymentMethodSelectedCopyWithImpl<$Res>
    implements $PaymentMethodSelectedCopyWith<$Res> {
  _$PaymentMethodSelectedCopyWithImpl(this._self, this._then);

  final PaymentMethodSelected _self;
  final $Res Function(PaymentMethodSelected) _then;

/// Create a copy of PaymentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? method = null,}) {
  return _then(PaymentMethodSelected(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as PaymentMethod,
  ));
}


}

/// @nodoc


class PhoneChanged implements PaymentEvent {
  const PhoneChanged({required this.phone});
  

 final  String phone;

/// Create a copy of PaymentEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhoneChangedCopyWith<PhoneChanged> get copyWith => _$PhoneChangedCopyWithImpl<PhoneChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhoneChanged&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,phone);

@override
String toString() {
  return 'PaymentEvent.phoneChanged(phone: $phone)';
}


}

/// @nodoc
abstract mixin class $PhoneChangedCopyWith<$Res> implements $PaymentEventCopyWith<$Res> {
  factory $PhoneChangedCopyWith(PhoneChanged value, $Res Function(PhoneChanged) _then) = _$PhoneChangedCopyWithImpl;
@useResult
$Res call({
 String phone
});




}
/// @nodoc
class _$PhoneChangedCopyWithImpl<$Res>
    implements $PhoneChangedCopyWith<$Res> {
  _$PhoneChangedCopyWithImpl(this._self, this._then);

  final PhoneChanged _self;
  final $Res Function(PhoneChanged) _then;

/// Create a copy of PaymentEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phone = null,}) {
  return _then(PhoneChanged(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PayButtonPressed implements PaymentEvent {
  const PayButtonPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PayButtonPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentEvent.payButtonPressed()';
}


}




/// @nodoc


class PaymentErrorDismissed implements PaymentEvent {
  const PaymentErrorDismissed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentErrorDismissed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentEvent.paymentErrorDismissed()';
}


}




// dart format on
