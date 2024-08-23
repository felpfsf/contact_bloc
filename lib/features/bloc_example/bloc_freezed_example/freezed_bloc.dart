import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_bloc.freezed.dart';
part 'freezed_bloc_event.dart';
part 'freezed_bloc_state.dart';

class FreezedBloc extends Bloc<FreezedBlocEvent, FreezedBlocState> {
  FreezedBloc() : super(FreezedBlocState.initial()) {
    on<_FreezedBlocEventAddContact>(_addContact);
    on<_FreedBlocEventFindContacts>(_findContacts);
    on<_FreezedBlocEventRemoveContact>(_removeContact);
  }

  FutureOr<void> _addContact(
    _FreezedBlocEventAddContact event,
    Emitter<FreezedBlocState> emit,
  ) async {
    Future.delayed(const Duration(seconds: 2));

    final contacts = state.maybeWhen(
      data: (contacts) => contacts,
      orElse: () => const <String>[],
    );

    emit(
      FreezedBlocState.showBanner(
        message: 'Nome sendo adicionado, aguarde...',
        contacts: contacts,
      ),
    );
    final contactsUpdated = [...contacts, event.contact];

    emit(FreezedBlocState.data(contacts: contactsUpdated));
  }

  FutureOr<void> _findContacts(
    _FreedBlocEventFindContacts event,
    Emitter<FreezedBlocState> emit,
  ) async {
    emit(FreezedBlocState.loading());
    await Future.delayed(const Duration(seconds: 2));
    final contacts = ['John', 'Jane', 'Joe', 'Jack'];

    emit(FreezedBlocState.data(contacts: contacts));
  }

  FutureOr<void> _removeContact(
    _FreezedBlocEventRemoveContact event,
    Emitter<FreezedBlocState> emit,
  ) async {
    final contacts = state.maybeWhen(
      data: (contacts) => contacts,
      orElse: () => const <String>[],
    );

    final contactsUpdated = [...contacts];

    contactsUpdated.removeWhere((contact) => contact == event.contact);

    emit(FreezedBlocState.data(contacts: contactsUpdated));
  }
}
