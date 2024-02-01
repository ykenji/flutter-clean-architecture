import 'package:clean_architecture_sample/domain/model/entity/user.dart';
import 'package:clean_architecture_sample/domain/model/value/user_id.dart';

abstract class UserRepository {
  Future<User> add(User user);

  Future<UserId?> remove(UserId id);

  Future<List<User>> findAll();

  Future<User?> find(UserId id);
}
