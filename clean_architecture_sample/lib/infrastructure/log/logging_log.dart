import 'package:clean_architecture_sample/domain/adapter/log/log.dart';
import 'package:logging/logging.dart';
import 'package:logging_to_logcat/logging_to_logcat.dart';

class LoggingLog implements Log {
  final logger = Logger('clean_architecture_sample');

  @override
  void init() {
    Logger.root.level = Level.ALL;
    Logger.root.activateLogcat();
  }

  @override
  void e(String msg) {
    logger.severe(msg);
  }

  @override
  void w(String msg) {
    logger.warning(msg);
  }

  @override
  void i(String msg) {
    logger.info(msg);
  }

  @override
  void d(String msg) {
    logger.fine(msg);
  }

  @override
  void v(String msg) {
    logger.finer(msg);
  }
}
