// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersViewModelState {
  List<VmUser> get list => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersViewModelStateCopyWith<UsersViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersViewModelStateCopyWith<$Res> {
  factory $UsersViewModelStateCopyWith(
          UsersViewModelState value, $Res Function(UsersViewModelState) then) =
      _$UsersViewModelStateCopyWithImpl<$Res, UsersViewModelState>;
  @useResult
  $Res call({List<VmUser> list});
}

/// @nodoc
class _$UsersViewModelStateCopyWithImpl<$Res, $Val extends UsersViewModelState>
    implements $UsersViewModelStateCopyWith<$Res> {
  _$UsersViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<VmUser>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsersViewModelStateImplCopyWith<$Res>
    implements $UsersViewModelStateCopyWith<$Res> {
  factory _$$UsersViewModelStateImplCopyWith(_$UsersViewModelStateImpl value,
          $Res Function(_$UsersViewModelStateImpl) then) =
      __$$UsersViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<VmUser> list});
}

/// @nodoc
class __$$UsersViewModelStateImplCopyWithImpl<$Res>
    extends _$UsersViewModelStateCopyWithImpl<$Res, _$UsersViewModelStateImpl>
    implements _$$UsersViewModelStateImplCopyWith<$Res> {
  __$$UsersViewModelStateImplCopyWithImpl(_$UsersViewModelStateImpl _value,
      $Res Function(_$UsersViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$UsersViewModelStateImpl(
      null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<VmUser>,
    ));
  }
}

/// @nodoc

class _$UsersViewModelStateImpl extends _UsersViewModelState {
  _$UsersViewModelStateImpl([final List<VmUser> list = const []])
      : _list = list,
        super._();

  final List<VmUser> _list;
  @override
  @JsonKey()
  List<VmUser> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'UsersViewModelState(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersViewModelStateImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersViewModelStateImplCopyWith<_$UsersViewModelStateImpl> get copyWith =>
      __$$UsersViewModelStateImplCopyWithImpl<_$UsersViewModelStateImpl>(
          this, _$identity);
}

abstract class _UsersViewModelState extends UsersViewModelState {
  factory _UsersViewModelState([final List<VmUser> list]) =
      _$UsersViewModelStateImpl;
  _UsersViewModelState._() : super._();

  @override
  List<VmUser> get list;
  @override
  @JsonKey(ignore: true)
  _$$UsersViewModelStateImplCopyWith<_$UsersViewModelStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
