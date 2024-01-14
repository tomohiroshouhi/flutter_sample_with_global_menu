import 'package:dart3_sample/feature/feature_switch_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text(context.watch<FeatureSwitchCubit>().state.label),
      // ),
      body: context.watch<FeatureSwitchCubit>().state.page,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          context.read<FeatureSwitchCubit>().switchFeature(
                FeatureType.values[index],
              );
        },
        currentIndex: context.watch<FeatureSwitchCubit>().state.index,
        items: FeatureType.values
            .map(
              (e) => BottomNavigationBarItem(
                icon: Icon(
                  e.icon,
                  color: (context.watch<FeatureSwitchCubit>().state == e)
                      ? Colors.red
                      : Theme.of(context).colorScheme.inversePrimary,
                ),
                label: e.label,
              ),
            )
            .toList(),
      ),
    );
  }
}
