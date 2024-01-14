import 'package:flutter/material.dart';

class ScheduleMainPage extends StatelessWidget {
  const ScheduleMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Schedule',
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
