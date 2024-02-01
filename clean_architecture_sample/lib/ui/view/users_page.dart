import 'package:clean_architecture_sample/controller/user_controller.dart';
import 'package:clean_architecture_sample/ui/view/user_info.dart';
import 'package:clean_architecture_sample/ui/viewmodel/users_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UsersPage extends ConsumerWidget {
  const UsersPage({super.key});

  static const String _title = 'Users';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: UsersWidget(),
        ),
      ),
    );
  }
}

class UsersWidget extends ConsumerStatefulWidget {
  const UsersWidget({super.key});

  @override
  ConsumerState createState() => _UsersWidgetState();
}

enum UserRole {
  member('member'),
  admin('admin'),
  ;

  const UserRole(this.name);

  final String name;
}

class _UsersWidgetState extends ConsumerState<UsersWidget> {
  late final UserController controller;
  UserRole role = UserRole.member;
  String name = "";

  @override
  void initState() {
    super.initState();
    controller = UserController(ref);
  }

  @override
  Widget build(BuildContext context) {
    final users = ref.watch(usersViewModelProvider.select((s) => s.list));

    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('member'),
          leading: Radio<UserRole>(
            value: UserRole.member,
            groupValue: role,
            onChanged: (UserRole? value) {
              setState(() {
                role = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('admin'),
          leading: Radio<UserRole>(
            value: UserRole.admin,
            groupValue: role,
            onChanged: (UserRole? value) {
              setState(() {
                role = value!;
              });
            },
          ),
        ),
        TextField(
          onChanged: (String? value) {
            setState(() {
              name = value!;
            });
          },
        ),
        OutlinedButton(
          onPressed: () {
            controller.createUser(name, role.name);
          },
          child: Text('Add user'),
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 8),
            itemCount: users.length,
            itemBuilder: (_, index) =>
                _User(index: index, controller: controller),
          ),
        ),
      ],
    );
  }
}

class _User extends ConsumerWidget {
  _User({
    required this.index,
    required this.controller,
  }) : super(key: ValueKey(index));

  final int index;
  final UserController controller;

  static const _indent = 16.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final user =
        ref.watch(usersViewModelProvider.select((s) => s.users))[index];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: _indent),
          height: 96,
          child: Row(
            children: [
              UserInfo(
                name: user.name,
                role: user.role,
                id: user.id,
              ),
              CupertinoButton(
                onPressed: () {
                  controller.removeUser(user.id);
                },
                child: Text(
                  'Remove',
                  style: TextStyle(
                    color: colorScheme.error,
                  ),
                ),
              ),
            ],
          ),
        ),
        const Divider(indent: _indent),
      ],
    );
  }
}
