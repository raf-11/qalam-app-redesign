import 'package:flutter/material.dart';
import '../utils/app_theme.dart';

class NotificationTile extends StatelessWidget {
  final String title;

  const NotificationTile({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.notifications, color: AppColors.primary),
      title: Text(title),
    );
  }
}