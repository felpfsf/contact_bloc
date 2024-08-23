import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

part 'bloc_example_event.dart';
part 'bloc_example_state.dart';

class BlocExampleBloc extends Bloc<BlocExampleEvent, BlocExampleState> {
  BlocExampleBloc() : super(BlocExampleStateInitial()) {
    on<BlocExampleFindNamesEvent>(_findNames);
    on<BlocExampleRemoveNameEvent>(_removeName);
    on<BlocExampleAddNameEvent>(_addName);
  }

  FutureOr<void> _addName(
      BlocExampleAddNameEvent event, Emitter<BlocExampleState> emit) async {
    final stateBlocExample = state;
    if (stateBlocExample is BlocExampleStateData) {
      final namesUpdated = [...stateBlocExample.names, event.name];
      emit(BlocExampleStateData(namesUpdated));
    }
  }

  Future<void> _findNames(
      BlocExampleFindNamesEvent event, Emitter<BlocExampleState> emit) async {
    await Future.delayed(const Duration(seconds: 2));
    final names = ['John', 'Jane', 'Joe', 'Jack'];

    emit(BlocExampleStateData(names));
  }

  FutureOr<void> _removeName(
      BlocExampleRemoveNameEvent event, Emitter<BlocExampleState> emit) async {
    final stateBlocExample = state;

    if (stateBlocExample is BlocExampleStateData) {
      final namesUpdated = [...stateBlocExample.names];

      // namesUpdated.retainWhere((el) => el != event.name);
      namesUpdated.removeWhere((el) => el == event.name);

      emit(BlocExampleStateData(namesUpdated));
    }
  }
}
