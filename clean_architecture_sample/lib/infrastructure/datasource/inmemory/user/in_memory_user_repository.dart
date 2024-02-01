import 'package:clean_architecture_sample/app.dart';
import 'package:clean_architecture_sample/domain/adapter/repository/user/user_repository.dart';
import 'package:clean_architecture_sample/domain/model/entity/user.dart';
import 'package:clean_architecture_sample/domain/model/value/user_id.dart';

class InMemoryUserRepository implements UserRepository {
  final _users = List<User>.empty(growable: true);

  InMemoryUserRepository() {
    log.d("InMemoryUserRepository.constructor $hashCode");
  }

  @override
  Future<User> add(User user) async {
    _users.add(user);
    return user;
  }

  @override
  Future<UserId?> remove(UserId id) async {
    User user = await find(id);
    return _users.remove(user) ? id : null;
  }

  @override
  Future<User> find(UserId id) async {
    return _users.firstWhere((it) => it.id.value == id.value);
  }

  @override
  Future<List<User>> findAll() async {
    return _users;
  }
}
