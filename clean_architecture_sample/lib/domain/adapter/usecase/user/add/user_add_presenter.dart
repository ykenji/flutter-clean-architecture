import 'package:clean_architecture_sample/domain/adapter/usecase/user/add/user_add_output_data.dart';

abstract class UserAddPresenter {
  void output(UserAddOutputData outputData);
}
