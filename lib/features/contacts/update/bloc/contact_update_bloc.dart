import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_update_bloc.freezed.dart';
part 'contact_update_event.dart';
part 'contact_update_state.dart';

class ContactUpdateBloc extends Bloc<ContactUpdateEvent, ContactUpdateState> {
  final ContactsRepository _contactsRepository;

  ContactUpdateBloc({required ContactsRepository contactsRepository})
      : _contactsRepository = contactsRepository,
        super(const _Initial()) {
    on<_Update>(_update);
  }

  Future<FutureOr<void>> _update(
      _Update event, Emitter<ContactUpdateState> emit) async {
    try {
      emit(const ContactUpdateState.loading());

      final contact = ContactModel(
        id: event.id,
        name: event.name,
        email: event.email,
      );

      await _contactsRepository.updateContact(contact);
      emit(const ContactUpdateState.success());
    } catch (e, s) {
      log('❌ Erro ao atualizar contato', error: e, stackTrace: s);
      emit(
        const ContactUpdateState.error(message: 'Erro ao atualizar contato'),
      );
    }
  }
}
