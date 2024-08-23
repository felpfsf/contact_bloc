import 'dart:developer';

import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_register_bloc.freezed.dart';
part 'contact_register_event.dart';
part 'contact_register_state.dart';

class ContactRegisterBloc
    extends Bloc<ContactRegisterEvent, ContactRegisterState> {
  final ContactsRepository _contactsRepository;

  ContactRegisterBloc({
    required ContactsRepository contactsRepository,
  })  : _contactsRepository = contactsRepository,
        super(const ContactRegisterState.initial()) {
    on<_AddContact>(_addContact);
  }

  Future<void> _addContact(
      _AddContact event, Emitter<ContactRegisterState> emit) async {
    try {
      emit(const ContactRegisterState.loading());

      await Future.delayed(const Duration(milliseconds: 800));

      final contact = ContactModel(
        email: event.email,
        name: event.name,
      );
      // throw Exception();

      await _contactsRepository.addContact(contact);

      emit(const ContactRegisterState.success());
    } catch (e, s) {
      log('❌ Erro ao adicionar contato', error: e, stackTrace: s);
      emit(const ContactRegisterState.error('Erro ao adicionar contato'));
    }
  }
}
