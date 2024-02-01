import 'package:clean_architecture_sample/domain/adapter/usecase/core/input_data.dart';
import 'package:clean_architecture_sample/domain/adapter/usecase/user/add/user_add_output_data.dart';
import 'package:clean_architecture_sample/domain/model/value/user_role.dart';

class UserAddInputData extends InputData<UserAddOutputData> {
  final String userName;
  final UserRole role;

  UserAddInputData(this.userName, this.role);
}
