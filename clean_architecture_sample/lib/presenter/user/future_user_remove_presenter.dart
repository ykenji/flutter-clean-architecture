import 'package:clean_architecture_sample/app.dart';
import 'package:clean_architecture_sample/domain/adapter/usecase/user/remove/user_remove_output_data.dart';
import 'package:clean_architecture_sample/domain/adapter/usecase/user/remove/user_remove_presenter.dart';
import 'package:clean_architecture_sample/ui/viewmodel/users_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FutureUserRemovePresenter implements UserRemovePresenter {
  final Ref _ref;

  late final UsersViewModel _usersViewModel;

  FutureUserRemovePresenter(this._ref) {
    log.d("FutureUserRemovePresenter.constructor $hashCode");
    _usersViewModel = _ref.read(usersViewModelProvider.notifier);
  }

  @override
  void output(UserRemoveOutputData outputData) {
    log.d("FutureUserRemovePresenter.output ${outputData.userId}");
    if (outputData.userId == null) return;
    _usersViewModel.remove(outputData.userId!);
  }
}
