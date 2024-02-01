import 'package:clean_architecture_sample/app.dart';
import 'package:clean_architecture_sample/config/inject/use_case_module.dart';
import 'package:clean_architecture_sample/domain/adapter/usecase/user/add/user_add_input_data.dart';
import 'package:clean_architecture_sample/domain/adapter/usecase/user/add/user_add_use_case.dart';
import 'package:clean_architecture_sample/domain/adapter/usecase/user/remove/user_remove_input_data.dart';
import 'package:clean_architecture_sample/domain/adapter/usecase/user/remove/user_remove_use_case.dart';
import 'package:clean_architecture_sample/domain/model/value/user_role.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserController {
  final WidgetRef _ref;

  late final UserAddUseCase _addUseCase;
  late final UserRemoveUseCase _removeUseCase;

  UserController(this._ref) {
    log.d("UserController.constructor $hashCode");
    _addUseCase = _ref.read(userAddUseCaseProvider);
    _removeUseCase = _ref.read(userRemoveUseCaseProvider);
  }

  void createUser(String name, String roleId) {
    var role = _convertRole(roleId);
    var inputData = UserAddInputData(name, role);

    _addUseCase.handle(inputData);
  }

  void removeUser(String userId) {
    var inputData = UserRemoveInputData(userId);
    _removeUseCase.handle(inputData);
  }

  UserRole _convertRole(String roleId) {
    return switch (roleId) {
      "admin" => UserRole.ADMIN,
      "member" => UserRole.MEMBER,
      _ => throw UnimplementedError()
    };
  }
}
