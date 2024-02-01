import 'package:clean_architecture_sample/domain/adapter/usecase/core/output_data.dart';
import 'package:clean_architecture_sample/domain/adapter/usecase/user/common/uc_user.dart';

class UserAddOutputData extends OutputData {
  final UcUser user;

  UserAddOutputData(this.user);
}
