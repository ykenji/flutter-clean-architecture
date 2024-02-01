import 'package:clean_architecture_sample/domain/adapter/log/log.dart';

class PrintLog implements Log {
  @override
  void init() {}

  @override
  void e(String msg) {
    print('[ERROR]: $msg');
  }

  @override
  void w(String msg) {
    print('[WARNING]: $msg');
  }

  @override
  void i(String msg) {
    print('[INFO]: $msg');
  }

  @override
  void d(String msg) {
    print('[DEBUG]: $msg');
  }

  @override
  void v(String msg) {
    print('[VERBOSE]: $msg');
  }
}
