import 'package:clean_architecture_sample/domain/adapter/usecase/core/output_data.dart';

class UserRemoveOutputData extends OutputData {
  final String? userId;

  UserRemoveOutputData(this.userId);
}
