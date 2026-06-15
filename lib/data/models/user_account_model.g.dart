// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserAccountModel _$UserAccountModelFromJson(Map<String, dynamic> json) =>
    _UserAccountModel(
      id: json['id'] as String,
      balance: (json['balance'] as num).toDouble(),
    );

Map<String, dynamic> _$UserAccountModelToJson(_UserAccountModel instance) =>
    <String, dynamic>{'id': instance.id, 'balance': instance.balance};
