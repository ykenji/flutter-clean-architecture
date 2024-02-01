import 'package:clean_architecture_sample/domain/adapter/usecase/user/add/user_add_presenter.dart';
import 'package:clean_architecture_sample/domain/adapter/usecase/user/remove/user_remove_presenter.dart';
import 'package:clean_architecture_sample/presenter/user/future_user_add_presenter.dart';
import 'package:clean_architecture_sample/presenter/user/future_user_remove_presenter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'presenter_module.g.dart';

@riverpod
UserAddPresenter userAddPresenter(UserAddPresenterRef ref) =>
    FutureUserAddPresenter(ref);

@riverpod
UserRemovePresenter userRemovePresenter(UserRemovePresenterRef ref) =>
    FutureUserRemovePresenter(ref);
