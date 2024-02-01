import 'package:clean_architecture_sample/app.dart';
import 'package:clean_architecture_sample/application/usecase/user/mapper/user_mapper.dart';
import 'package:clean_architecture_sample/config/inject/presenter_module.dart';
import 'package:clean_architecture_sample/config/inject/repository_module.dart';
import 'package:clean_architecture_sample/domain/adapter/repository/user/user_repository.dart';
import 'package:clean_architecture_sample/domain/adapter/usecase/user/add/user_add_input_data.dart';
import 'package:clean_architecture_sample/domain/adapter/usecase/user/add/user_add_output_data.dart';
import 'package:clean_architecture_sample/domain/adapter/usecase/user/add/user_add_presenter.dart';
import 'package:clean_architecture_sample/domain/adapter/usecase/user/add/user_add_use_case.dart';
import 'package:clean_architecture_sample/domain/model/entity/user.dart';
import 'package:clean_architecture_sample/domain/model/value/user_id.dart';
import 'package:clean_architecture_sample/domain/model/value/user_name.dart';
import 'package:clean_architecture_sample/domain/model/value/user_role.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

class UserAddInteractor implements UserAddUseCase {
  final Ref _ref;

  late final UserRepository _userRepository;
  late final UserAddPresenter _userAddPresenter;

  UserAddInteractor(this._ref) {
    log.d("UserAddInteractor.constructor $hashCode");
    _userRepository = _ref.read(userRepositoryProvider);
    _userAddPresenter = _ref.read(userAddPresenterProvider);
  }

  @override
  Future<UserAddOutputData> handle(UserAddInputData inputData) async {
    final uuid = const Uuid().v4();
    final user = _createUser(uuid, inputData.userName, inputData.role);
    final addedUser = await _userRepository.add(user);
    final outputData = UserAddOutputData(UserMapper.toUcUser(addedUser));
    _userAddPresenter.output(outputData);
    return outputData;
  }

  static User _createUser(String id, String name, UserRole role) {
    return User(id: UserId(value: id), name: UserName(value: name), role: role);
  }
}
