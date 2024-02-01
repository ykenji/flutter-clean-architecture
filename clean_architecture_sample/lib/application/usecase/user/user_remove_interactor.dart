import 'package:clean_architecture_sample/app.dart';
import 'package:clean_architecture_sample/config/inject/presenter_module.dart';
import 'package:clean_architecture_sample/config/inject/repository_module.dart';
import 'package:clean_architecture_sample/domain/adapter/repository/user/user_repository.dart';
import 'package:clean_architecture_sample/domain/adapter/usecase/user/remove/user_remove_input_data.dart';
import 'package:clean_architecture_sample/domain/adapter/usecase/user/remove/user_remove_output_data.dart';
import 'package:clean_architecture_sample/domain/adapter/usecase/user/remove/user_remove_presenter.dart';
import 'package:clean_architecture_sample/domain/adapter/usecase/user/remove/user_remove_use_case.dart';
import 'package:clean_architecture_sample/domain/model/value/user_id.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserRemoveInteractor implements UserRemoveUseCase {
  final Ref _ref;

  late final UserRepository _userRepository;
  late final UserRemovePresenter _userRemovePresenter;

  UserRemoveInteractor(this._ref) {
    log.d("UserRemoveInteractor.constructor $hashCode");
    _userRepository = _ref.read(userRepositoryProvider);
    _userRemovePresenter = _ref.read(userRemovePresenterProvider);
  }

  @override
  Future<UserRemoveOutputData> handle(UserRemoveInputData inputData) async {
    var removedId =
        await _userRepository.remove(UserId(value: inputData.userId));
    final outputData = UserRemoveOutputData(removedId?.value);
    _userRemovePresenter.output(outputData);
    return outputData;
  }
}
