import 'package:clean_architecture_sample/domain/model/value/user_id.dart';
import 'package:clean_architecture_sample/domain/model/value/user_name.dart';
import 'package:clean_architecture_sample/domain/model/value/user_role.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required UserId id,
    required UserName name,
    required UserRole role,
  }) = _User;
}
