import 'package:clean_architecture_sample/config/inject/log_module.dart';
import 'package:clean_architecture_sample/domain/adapter/log/log.dart';
import 'package:clean_architecture_sample/ui/view/users_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

late final Log log;

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    log = ref.read(logProvider);
    log.init();
    return UsersPage();
  }
}
