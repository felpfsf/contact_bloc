import 'dart:async';
import 'dart:developer';

import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_list_bloc.freezed.dart';
part 'contact_list_event.dart';
part 'contact_list_state.dart';

class ContactListBloc extends Bloc<ContactListEvent, ContactListState> {
  final ContactsRepository _contactsRepository;

  ContactListBloc({
    required ContactsRepository contactsRepository,
  })  : _contactsRepository = contactsRepository,
        super(ContactListState.initial()) {
    on<_ContactListFindAllEvent>(_findAll);
    on<_ContactListDeleteEvent>(_delete);
  }

  Future<void> _findAll(
      _ContactListFindAllEvent event, Emitter<ContactListState> emit) async {
    try {
      emit(ContactListState.loading());

      // await Future.delayed(const Duration(milliseconds: 800));

      final contacts = await _contactsRepository.getContacts();

      emit(ContactListState.data(contacts: contacts));
    } catch (e, s) {
      log('❌ Erro ao buscar todos os contatos', error: e, stackTrace: s);
      emit(ContactListState.error('Erro ao buscar todos os contatos'));
    }
  }

  Future<FutureOr<void>> _delete(
      _ContactListDeleteEvent event, Emitter<ContactListState> emit) async {
    try {
      emit(ContactListState.loading());

      await _contactsRepository.deleteContact(event.contact);

      add(const ContactListEvent.findAll());
    } catch (e, s) {
      log('❌ Erro ao deletar o contato', error: e, stackTrace: s);
      emit(ContactListState.error('Erro ao deletar o contato'));
    }
  }
}
