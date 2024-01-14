part of 'sample_bloc.dart';

abstract class SampleBlocEvent {
  const SampleBlocEvent();
}

class ChangeFeature extends SampleBlocEvent {
  const ChangeFeature({required this.feature});

  final Feature feature;
}
