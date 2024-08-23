part of 'bloc_example_bloc.dart';

@immutable
sealed class BlocExampleEvent {}

class BlocExampleFindNamesEvent extends BlocExampleEvent {}

class BlocExampleAddNameEvent extends BlocExampleEvent {
  final String name;

  BlocExampleAddNameEvent(this.name);
}

class BlocExampleRemoveNameEvent extends BlocExampleEvent {
  final String name;

  BlocExampleRemoveNameEvent(this.name);
}
