import 'package:freezed_annotation/freezed_annotation.dart';

part 'vm_user.freezed.dart';

@freezed
class VmUser with _$VmUser {
  const factory VmUser({
    required String id,
    required String name,
    required String role,
  }) = _VmUser;
}
