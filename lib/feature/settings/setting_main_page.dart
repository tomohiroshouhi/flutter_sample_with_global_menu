import 'package:flutter/material.dart';

class SettingMainPage extends StatelessWidget {
  const SettingMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Setting',
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
