import 'package:clean_architecture_sample/domain/model/value/user_role.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'uc_user.freezed.dart';

@freezed
class UcUser with _$UcUser {
  const factory UcUser({
    required String id,
    required String name,
    required UserRole role,
  }) = _UcUser;
}
