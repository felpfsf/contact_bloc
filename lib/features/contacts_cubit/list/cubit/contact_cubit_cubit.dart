import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_cubit_cubit.freezed.dart';
part 'contact_cubit_state.dart';

class ContactCubitCubit extends Cubit<ContactCubitState> {
  final ContactsRepository _contactsRepository;

  ContactCubitCubit({required ContactsRepository contactsRepository})
      : _contactsRepository = contactsRepository,
        super(const ContactCubitState.initial());

  Future<void> getContacts() async {
    try {
      emit(const ContactCubitState.loading());

      Future.delayed(const Duration(milliseconds: 800));

      final contacts = await _contactsRepository.getContacts();

      emit(ContactCubitState.data(contacts: contacts));
    } catch (e, s) {
      log('❌ Erro ao buscar todos os contatos', error: e, stackTrace: s);
      emit(
        const ContactCubitState.error(
          message: 'Erro ao buscar todos os contatos',
        ),
      );
    }
  }

  Future<void> deleteContact(ContactModel contact) async {
    try {
      emit(const ContactCubitState.loading());

      await _contactsRepository.deleteContact(contact);

      getContacts();
    } catch (e, s) {
      log('❌ Erro ao deletar contato', error: e, stackTrace: s);
      emit(
        const ContactCubitState.error(
          message: 'Erro ao deletar contato',
        ),
      );
    }
  }
}
