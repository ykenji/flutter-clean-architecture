import 'package:clean_architecture_sample/domain/adapter/usecase/user/common/uc_user.dart';
import 'package:clean_architecture_sample/presenter/user/model/vm_user.dart';

class UserMapper {
  UserMapper._();

  static VmUser toVmUser(UcUser user) {
    return VmUser(id: user.id, name: user.name, role: user.role.name);
  }
}
