import 'package:clean_architecture_sample/app.dart';
import 'package:clean_architecture_sample/presenter/user/model/vm_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'users_view_model.freezed.dart';
part 'users_view_model.g.dart';

@riverpod
class UsersViewModel extends _$UsersViewModel {
  UsersViewModel() {
    log.d("UsersViewModel.constructor $hashCode");
  }

  @override
  UsersViewModelState build() => UsersViewModelState();

  void add(VmUser user) => state = state.add(user);

  void remove(String userId) => state = state.remove(userId);
}

@freezed
class UsersViewModelState with _$UsersViewModelState {
  factory UsersViewModelState([@Default([]) List<VmUser> list]) =
      _UsersViewModelState;

  UsersViewModelState._() {
    log.d("UsersViewModelState.constructor $hashCode");
  }

  UsersViewModelState add(VmUser user) {
    return UsersViewModelState([...list, user]);
  }

  UsersViewModelState remove(String userId) {
    return UsersViewModelState(
        [...list
        ]..removeWhere((user) => user.id == userId)
    );
  }

  late final users = list;
}
