import 'package:bloc_test/bloc_test.dart';
import 'package:contact_bloc/features/contacts_cubit/add/cubit/contact_add_cubit.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockContactsRepository extends Mock implements ContactsRepository {}

class FakeContactModel extends Fake implements ContactModel {}

void main() {
  // Declaração
  late ContactsRepository contactsRepository;
  late ContactAddCubit cubit;

  // Preparação
  setUpAll(() {
    registerFallbackValue(FakeContactModel());
  });
  setUp(
    () {
      contactsRepository = MockContactsRepository();
      cubit = ContactAddCubit(contactsRepository: contactsRepository);
    },
  );

  // Execução
  blocTest(
    'Deve adicionar contato com sucesso',
    build: () => cubit,
    act: (cubit) {
      const contact = ContactModel(
        name: 'John Doe',
        email: 'johndoe@example.com',
      );

      return cubit.addContact(contact.name, contact.email);
    },
    setUp: () {
      // Simulando a adição de contato
      when(() => contactsRepository.addContact(any())).thenAnswer(
        (_) async => Future.value(),
      );
    },
    expect: () => [
      const ContactAddState.loading(),
      const ContactAddState.success(),
    ],
  );

  blocTest<ContactAddCubit, ContactAddState>(
    'Deve retornar erro ao adicionar um contato',
    build: () => cubit,
    act: (cubit) {
      const contact = ContactModel(
        name: 'John Doe',
        email: 'johndoe@example.com',
      );

      return cubit.addContact(contact.name, contact.email);
    },
    setUp: () {
      // Simulando falha ao adicionar contato
      when(() => contactsRepository.addContact(any())).thenThrow(
        Exception('Erro ao adicionar contato'),
      );
    },
    expect: () => [
      const ContactAddState.loading(),
      const ContactAddState.failure(
        message: 'Erro ao adicionar contato',
      ),
    ],
  );
}
