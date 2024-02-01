import 'package:clean_architecture_sample/domain/adapter/usecase/core/input_data.dart';
import 'package:clean_architecture_sample/domain/adapter/usecase/user/remove/user_remove_output_data.dart';

class UserRemoveInputData extends InputData<UserRemoveOutputData> {
  final String userId;

  UserRemoveInputData(this.userId);
}
