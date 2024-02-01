import 'package:clean_architecture_sample/domain/adapter/usecase/core/use_case.dart';
import 'package:clean_architecture_sample/domain/adapter/usecase/user/add/user_add_input_data.dart';
import 'package:clean_architecture_sample/domain/adapter/usecase/user/add/user_add_output_data.dart';

abstract class UserAddUseCase
    extends UseCase<UserAddInputData, UserAddOutputData> {}
