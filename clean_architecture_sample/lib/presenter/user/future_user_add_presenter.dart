import 'package:clean_architecture_sample/app.dart';
import 'package:clean_architecture_sample/domain/adapter/usecase/user/add/user_add_output_data.dart';
import 'package:clean_architecture_sample/domain/adapter/usecase/user/add/user_add_presenter.dart';
import 'package:clean_architecture_sample/presenter/user/mapper/user_mapper.dart';
import 'package:clean_architecture_sample/ui/viewmodel/users_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FutureUserAddPresenter implements UserAddPresenter {
  final Ref _ref;

  late final UsersViewModel _usersViewModel;

  FutureUserAddPresenter(this._ref) {
    log.d("FutureUserAddPresenter.constructor $hashCode");
    _usersViewModel = _ref.read(usersViewModelProvider.notifier);
  }

  @override
  void output(UserAddOutputData outputData) {
    _usersViewModel.add(UserMapper.toVmUser(outputData.user));
  }
}
