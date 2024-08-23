part of 'bloc_example_bloc.dart';

@immutable
sealed class BlocExampleState {}

final class BlocExampleStateInitial extends BlocExampleState {}

final class BlocExampleStateData extends BlocExampleState {
  final List<String> names;

  BlocExampleStateData(this.names);
}
