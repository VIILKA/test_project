import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/user_account.dart';

part 'user_account_model.freezed.dart';
part 'user_account_model.g.dart';

@freezed
abstract class UserAccountModel with _$UserAccountModel {
  const factory UserAccountModel({
    required String id,
    required double balance,
  }) = _UserAccountModel;

  factory UserAccountModel.fromJson(Map<String, dynamic> json) =>
      _$UserAccountModelFromJson(json);
}

extension UserAccountModelX on UserAccountModel {
  UserAccount toEntity() {
    return UserAccount(id: id, balance: balance);
  }
}
