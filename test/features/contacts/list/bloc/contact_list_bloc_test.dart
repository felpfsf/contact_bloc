import 'package:bloc_test/bloc_test.dart';
import 'package:contact_bloc/features/contacts/list/bloc/contact_list_bloc.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockContactsRepository extends Mock implements ContactsRepository {}

void main() {
  // declaração
  late ContactsRepository contactsRepository;
  late ContactListBloc contactListBloc;
  late List<ContactModel> contacts;

  // preparação
  setUp(
    () {
      contactsRepository = MockContactsRepository();
      contactListBloc = ContactListBloc(contactsRepository: contactsRepository);
      contacts = [
        const ContactModel(name: 'John Doe', email: 'johndoe@example.com'),
        const ContactModel(name: 'Jane Doe', email: 'janedoe@example.com'),
        const ContactModel(name: 'Bob Doe', email: 'bobdoe@example.com'),
      ];
    },
  );

  // execução
  blocTest<ContactListBloc, ContactListState>(
    'Deve retornar os contatos',
    build: () => contactListBloc,
    act: (bloc) => bloc.add(const ContactListEvent.findAll()),
    setUp: () {
      when(() => contactsRepository.getContacts()).thenAnswer(
        (_) async => contacts,
      );
    },
    expect: () => [
      ContactListState.loading(),
      ContactListState.data(contacts: contacts),
    ],
  );
  blocTest<ContactListBloc, ContactListState>(
    'Deve retornar erro ao buscar os contatos',
    build: () => contactListBloc,
    act: (bloc) => bloc.add(const ContactListEvent.findAll()),
    expect: () => [
      ContactListState.loading(),
      ContactListState.error('Erro ao buscar todos os contatos'),
    ],
  );
}
