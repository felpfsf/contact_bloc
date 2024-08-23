import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_add_cubit.freezed.dart';
part 'contact_add_state.dart';

class ContactAddCubit extends Cubit<ContactAddState> {
  final ContactsRepository _contactsRepository;
  ContactAddCubit({
    required ContactsRepository contactsRepository,
  })  : _contactsRepository = contactsRepository,
        super(const ContactAddState.initial());

  Future<void> addContact(String name, String email) async {
    try {
      emit(const ContactAddState.loading());

      final contact = ContactModel(
        name: name,
        email: email,
      );

      await _contactsRepository.addContact(contact);

      emit(const ContactAddState.success());
    } catch (e, s) {
      log('❌ Erro ao adicionar contato', error: e, stackTrace: s);
      emit(
        const ContactAddState.failure(message: "Erro ao adicionar contato"),
      );
    }
  }
}
