import 'package:clean_architecture_sample/application/usecase/user/user_add_interactor.dart';
import 'package:clean_architecture_sample/application/usecase/user/user_remove_interactor.dart';
import 'package:clean_architecture_sample/domain/adapter/usecase/user/add/user_add_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'use_case_module.g.dart';

@riverpod
UserAddUseCase userAddUseCase(UserAddUseCaseRef ref) => UserAddInteractor(ref);

@riverpod
UserRemoveInteractor userRemoveUseCase(UserRemoveUseCaseRef ref) =>
    UserRemoveInteractor(ref);
