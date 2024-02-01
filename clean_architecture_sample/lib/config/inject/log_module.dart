import 'package:clean_architecture_sample/domain/adapter/log/log.dart';
import 'package:clean_architecture_sample/infrastructure/log/logging_log.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'log_module.g.dart';

@riverpod
Log log(LogRef ref) => LoggingLog();
