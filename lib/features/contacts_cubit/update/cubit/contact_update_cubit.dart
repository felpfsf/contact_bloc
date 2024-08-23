import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_update_cubit.freezed.dart';
part 'contact_update_state.dart';

class ContactUpdateCubit extends Cubit<ContactUpdateState> {
  final ContactsRepository _contactsRepository;

  ContactUpdateCubit({
    required ContactsRepository contactsRepository,
  })  : _contactsRepository = contactsRepository,
        super(const ContactUpdateState.initial());

  Future<void> updateContact(int id, String name, String email) async {
    try {
      emit(const ContactUpdateState.loading());

      final contact = ContactModel(
        id: id,
        name: name,
        email: email,
      );

      await _contactsRepository.updateContact(contact);

      emit(const ContactUpdateState.success());
    } catch (e, s) {
      log('❌ Erro ao atualizar contato', error: e, stackTrace: s);
      emit(
        const ContactUpdateState.failure(message: "Erro ao atualizar contato"),
      );
    }
  }
}
