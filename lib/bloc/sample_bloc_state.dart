part of 'sample_bloc.dart';

enum Feature { home, notice, movie, player }

class SampleBlocState extends Equatable {
  const SampleBlocState({
    required this.counter,
    required this.feature,
  });

  const SampleBlocState.init()
      : counter = 0,
        feature = Feature.home;

  final int counter;
  final Feature feature;

  String get featureName => switch (feature) {
        Feature.home => 'Home',
        Feature.notice => 'Notice',
        Feature.movie => 'Movie',
        Feature.player => 'Player',
      };

  @override
  List<Object?> get props => [counter, feature];

  SampleBlocState copyWith({
    int? counter,
    Feature? feature,
  }) {
    return SampleBlocState(
      counter: counter ?? this.counter,
      feature: feature ?? this.feature,
    );
  }
}
