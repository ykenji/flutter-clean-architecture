import 'package:clean_architecture_sample/domain/adapter/usecase/user/common/uc_user.dart';
import 'package:clean_architecture_sample/domain/model/entity/user.dart';

class UserMapper {
  UserMapper._();

  static UcUser toUcUser(User user) {
    return UcUser(id: user.id.value, name: user.name.value, role: user.role);
  }
}
