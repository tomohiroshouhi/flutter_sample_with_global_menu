import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home/home_main_page.dart';
import 'notification/notification_main_page.dart';
import 'schedule/schedule_main_page.dart';
import 'settings/setting_main_page.dart';

enum FeatureType {
  home,
  schedule,
  apps,
  notification,
  settings,
}

class FeatureSwitchCubit extends Cubit<FeatureType> {
  FeatureSwitchCubit() : super(FeatureType.home);

  void switchFeature(FeatureType feature) {
    emit(feature);
  }
}

extension ExtensionFeatureType on FeatureType {
  IconData get icon => switch (this) {
        FeatureType.home => Icons.home,
        FeatureType.schedule => Icons.schedule,
        FeatureType.apps => Icons.apps,
        FeatureType.notification => Icons.notifications,
        FeatureType.settings => Icons.tune,
      };

  String get label => switch (this) {
        FeatureType.home => 'Home',
        FeatureType.schedule => 'Schedule',
        FeatureType.apps => 'Apps',
        FeatureType.notification => 'Notification',
        FeatureType.settings => 'Settings',
      };

  Widget get page => switch (this) {
        FeatureType.home => const HomeMainPage(),
        FeatureType.schedule => const ScheduleMainPage(),
        FeatureType.apps => const SizedBox.shrink(),
        FeatureType.notification => const NotificationMainPage(),
        FeatureType.settings => const SettingMainPage(),
      };
}
