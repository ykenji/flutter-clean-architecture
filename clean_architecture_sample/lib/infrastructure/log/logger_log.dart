import 'package:clean_architecture_sample/domain/adapter/log/log.dart';
import 'package:logger/logger.dart';

class PrintLog implements Log {
  final logger = Logger();

  @override
  void init() {}

  @override
  void e(String msg) {
    logger.e(msg);
  }

  @override
  void w(String msg) {
    logger.w(msg);
  }

  @override
  void i(String msg) {
    logger.i(msg);
  }

  @override
  void d(String msg) {
    logger.d(msg);
  }

  @override
  void v(String msg) {
    logger.v(msg);
  }
}
