// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaymentState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentState()';
}


}

/// @nodoc
class $PaymentStateCopyWith<$Res>  {
$PaymentStateCopyWith(PaymentState _, $Res Function(PaymentState) __);
}


/// Adds pattern-matching-related methods to [PaymentState].
extension PaymentStatePatterns on PaymentState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Error value)?  error,TResult Function( _Content value)?  content,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Error() when error != null:
return error(_that);case _Content() when content != null:
return content(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Error value)  error,required TResult Function( _Content value)  content,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Error():
return error(_that);case _Content():
return content(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Error value)?  error,TResult? Function( _Content value)?  content,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Error() when error != null:
return error(_that);case _Content() when content != null:
return content(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  error,TResult Function( Order order,  double totalSum,  PaymentMethod? selectedMethod,  String? phone,  UserAccount? userAccount,  bool isPaymentProcessing,  String? validationError,  String? paymentError,  bool isSuccess)?  content,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Error() when error != null:
return error(_that.message);case _Content() when content != null:
return content(_that.order,_that.totalSum,_that.selectedMethod,_that.phone,_that.userAccount,_that.isPaymentProcessing,_that.validationError,_that.paymentError,_that.isSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  error,required TResult Function( Order order,  double totalSum,  PaymentMethod? selectedMethod,  String? phone,  UserAccount? userAccount,  bool isPaymentProcessing,  String? validationError,  String? paymentError,  bool isSuccess)  content,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Error():
return error(_that.message);case _Content():
return content(_that.order,_that.totalSum,_that.selectedMethod,_that.phone,_that.userAccount,_that.isPaymentProcessing,_that.validationError,_that.paymentError,_that.isSuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  error,TResult? Function( Order order,  double totalSum,  PaymentMethod? selectedMethod,  String? phone,  UserAccount? userAccount,  bool isPaymentProcessing,  String? validationError,  String? paymentError,  bool isSuccess)?  content,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Error() when error != null:
return error(_that.message);case _Content() when content != null:
return content(_that.order,_that.totalSum,_that.selectedMethod,_that.phone,_that.userAccount,_that.isPaymentProcessing,_that.validationError,_that.paymentError,_that.isSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements PaymentState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentState.initial()';
}


}




/// @nodoc


class _Loading implements PaymentState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PaymentState.loading()';
}


}




/// @nodoc


class _Error implements PaymentState {
  const _Error({required this.message});
  

 final  String message;

/// Create a copy of PaymentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PaymentState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $PaymentStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of PaymentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Content implements PaymentState {
  const _Content({required this.order, required this.totalSum, this.selectedMethod, this.phone, this.userAccount, this.isPaymentProcessing = false, this.validationError, this.paymentError, this.isSuccess = false});
  

 final  Order order;
 final  double totalSum;
 final  PaymentMethod? selectedMethod;
 final  String? phone;
 final  UserAccount? userAccount;
@JsonKey() final  bool isPaymentProcessing;
 final  String? validationError;
 final  String? paymentError;
@JsonKey() final  bool isSuccess;

/// Create a copy of PaymentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContentCopyWith<_Content> get copyWith => __$ContentCopyWithImpl<_Content>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Content&&(identical(other.order, order) || other.order == order)&&(identical(other.totalSum, totalSum) || other.totalSum == totalSum)&&(identical(other.selectedMethod, selectedMethod) || other.selectedMethod == selectedMethod)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.userAccount, userAccount) || other.userAccount == userAccount)&&(identical(other.isPaymentProcessing, isPaymentProcessing) || other.isPaymentProcessing == isPaymentProcessing)&&(identical(other.validationError, validationError) || other.validationError == validationError)&&(identical(other.paymentError, paymentError) || other.paymentError == paymentError)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,order,totalSum,selectedMethod,phone,userAccount,isPaymentProcessing,validationError,paymentError,isSuccess);

@override
String toString() {
  return 'PaymentState.content(order: $order, totalSum: $totalSum, selectedMethod: $selectedMethod, phone: $phone, userAccount: $userAccount, isPaymentProcessing: $isPaymentProcessing, validationError: $validationError, paymentError: $paymentError, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class _$ContentCopyWith<$Res> implements $PaymentStateCopyWith<$Res> {
  factory _$ContentCopyWith(_Content value, $Res Function(_Content) _then) = __$ContentCopyWithImpl;
@useResult
$Res call({
 Order order, double totalSum, PaymentMethod? selectedMethod, String? phone, UserAccount? userAccount, bool isPaymentProcessing, String? validationError, String? paymentError, bool isSuccess
});




}
/// @nodoc
class __$ContentCopyWithImpl<$Res>
    implements _$ContentCopyWith<$Res> {
  __$ContentCopyWithImpl(this._self, this._then);

  final _Content _self;
  final $Res Function(_Content) _then;

/// Create a copy of PaymentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? order = null,Object? totalSum = null,Object? selectedMethod = freezed,Object? phone = freezed,Object? userAccount = freezed,Object? isPaymentProcessing = null,Object? validationError = freezed,Object? paymentError = freezed,Object? isSuccess = null,}) {
  return _then(_Content(
order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as Order,totalSum: null == totalSum ? _self.totalSum : totalSum // ignore: cast_nullable_to_non_nullable
as double,selectedMethod: freezed == selectedMethod ? _self.selectedMethod : selectedMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,userAccount: freezed == userAccount ? _self.userAccount : userAccount // ignore: cast_nullable_to_non_nullable
as UserAccount?,isPaymentProcessing: null == isPaymentProcessing ? _self.isPaymentProcessing : isPaymentProcessing // ignore: cast_nullable_to_non_nullable
as bool,validationError: freezed == validationError ? _self.validationError : validationError // ignore: cast_nullable_to_non_nullable
as String?,paymentError: freezed == paymentError ? _self.paymentError : paymentError // ignore: cast_nullable_to_non_nullable
as String?,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
