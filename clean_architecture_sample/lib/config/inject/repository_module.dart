import 'package:clean_architecture_sample/domain/adapter/repository/user/user_repository.dart';
import 'package:clean_architecture_sample/infrastructure/datasource/inmemory/user/in_memory_user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository_module.g.dart';

@riverpod
UserRepository userRepository(UserRepositoryRef ref) =>
    InMemoryUserRepository();
