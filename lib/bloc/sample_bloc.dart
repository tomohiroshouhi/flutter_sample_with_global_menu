import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math' as math;

part 'sample_bloc_state.dart';
part 'sample_bloc_event.dart';

class SampleBloc extends Bloc<SampleBlocEvent, SampleBlocState> {
  SampleBloc(super.initialState) {
    on<ChangeFeature>(_changeFeature);
  }

  void _changeFeature(
    ChangeFeature evnt,
    Emitter<SampleBlocState> emit,
  ) {
    emit(
      state.copyWith(
        feature: evnt.feature,
      ),
    );
  }
}
