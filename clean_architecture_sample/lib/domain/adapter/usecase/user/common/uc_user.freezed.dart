// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uc_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UcUser {
  String get id => throw _privateConstructorUsedError;

  String get name => throw _privateConstructorUsedError;

  UserRole get role => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UcUserCopyWith<UcUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UcUserCopyWith<$Res> {
  factory $UcUserCopyWith(UcUser value, $Res Function(UcUser) then) =
      _$UcUserCopyWithImpl<$Res, UcUser>;

  @useResult
  $Res call({String id, String name, UserRole role});
}

/// @nodoc
class _$UcUserCopyWithImpl<$Res, $Val extends UcUser>
    implements $UcUserCopyWith<$Res> {
  _$UcUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UcUserImplCopyWith<$Res> implements $UcUserCopyWith<$Res> {
  factory _$$UcUserImplCopyWith(
          _$UcUserImpl value, $Res Function(_$UcUserImpl) then) =
      __$$UcUserImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({String id, String name, UserRole role});
}

/// @nodoc
class __$$UcUserImplCopyWithImpl<$Res>
    extends _$UcUserCopyWithImpl<$Res, _$UcUserImpl>
    implements _$$UcUserImplCopyWith<$Res> {
  __$$UcUserImplCopyWithImpl(
      _$UcUserImpl _value, $Res Function(_$UcUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? role = null,
  }) {
    return _then(_$UcUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole,
    ));
  }
}

/// @nodoc

class _$UcUserImpl implements _UcUser {
  const _$UcUserImpl(
      {required this.id, required this.name, required this.role});

  @override
  final String id;
  @override
  final String name;
  @override
  final UserRole role;

  @override
  String toString() {
    return 'UcUser(id: $id, name: $name, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UcUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UcUserImplCopyWith<_$UcUserImpl> get copyWith =>
      __$$UcUserImplCopyWithImpl<_$UcUserImpl>(this, _$identity);
}

abstract class _UcUser implements UcUser {
  const factory _UcUser(
      {required final String id,
      required final String name,
      required final UserRole role}) = _$UcUserImpl;

  @override
  String get id;

  @override
  String get name;

  @override
  UserRole get role;

  @override
  @JsonKey(ignore: true)
  _$$UcUserImplCopyWith<_$UcUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
