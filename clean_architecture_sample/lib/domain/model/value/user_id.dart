import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_id.freezed.dart';

@freezed
class UserId with _$UserId {
  const factory UserId({
    required String value,
  }) = _UserId;
}
