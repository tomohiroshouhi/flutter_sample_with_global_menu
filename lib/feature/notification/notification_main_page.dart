import 'package:flutter/material.dart';

class NotificationMainPage extends StatelessWidget {
  const NotificationMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Notification',
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
