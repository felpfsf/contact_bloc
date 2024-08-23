import 'package:contact_bloc/models/contact_model.dart';
import 'package:dio/dio.dart';

const baseUrl = 'http://192.168.15.40:8080';

class ContactsRepository {
  Future<List<ContactModel>> getContacts() async {
    final response = await Dio().get('$baseUrl/contacts');

    return response.data
        ?.map<ContactModel>((contact) => ContactModel.fromMap(contact))
        .toList();
  }

  Future<void> addContact(ContactModel contact) async {
    await Dio().post('$baseUrl/contacts', data: contact.toMap());
  }

  Future<void> updateContact(ContactModel contact) async {
    await Dio().put('$baseUrl/contacts/${contact.id}', data: contact.toMap());
  }

  Future<void> deleteContact(ContactModel contact) async {
    await Dio().delete('$baseUrl/contacts/${contact.id}');
  }
}
