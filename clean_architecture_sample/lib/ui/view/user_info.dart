import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
    required this.name,
    required this.role,
    required this.id,
  });

  final String name;
  final String role;
  final String id;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyleMain = theme.textTheme.titleMedium;
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: textStyleMain,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              role,
              style: textStyleMain,
            ),
          ),
          Text(
            id,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
