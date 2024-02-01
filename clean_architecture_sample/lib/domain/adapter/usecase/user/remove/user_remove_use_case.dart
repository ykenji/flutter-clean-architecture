import 'package:clean_architecture_sample/domain/adapter/usecase/core/use_case.dart';
import 'package:clean_architecture_sample/domain/adapter/usecase/user/remove/user_remove_input_data.dart';
import 'package:clean_architecture_sample/domain/adapter/usecase/user/remove/user_remove_output_data.dart';

abstract class UserRemoveUseCase
    extends UseCase<UserRemoveInputData, UserRemoveOutputData> {}
