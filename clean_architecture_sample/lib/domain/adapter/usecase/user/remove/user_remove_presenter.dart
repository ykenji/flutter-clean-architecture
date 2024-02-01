import 'package:clean_architecture_sample/domain/adapter/usecase/user/remove/user_remove_output_data.dart';

abstract class UserRemovePresenter {
  void output(UserRemoveOutputData outputData);
}
