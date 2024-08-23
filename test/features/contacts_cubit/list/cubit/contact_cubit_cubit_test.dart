import 'package:bloc_test/bloc_test.dart';
import 'package:contact_bloc/features/contacts_cubit/list/cubit/contact_cubit_cubit.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockContactsRepository extends Mock implements ContactsRepository {}

class FakeContactModel extends Fake implements ContactModel {}

void main() {
  // Declaração
  late ContactsRepository contactsRepository;
  late ContactCubitCubit cubit;
  late List<ContactModel> contacts;

  // Preparação

  setUpAll(() {
    registerFallbackValue(FakeContactModel());
  });

  setUp(
    () {
      contactsRepository = MockContactsRepository();
      cubit = ContactCubitCubit(contactsRepository: contactsRepository);
      contacts = [
        const ContactModel(name: 'John Doe', email: 'johndoe@example.com'),
        const ContactModel(name: 'Jane Doe', email: 'janedoe@example.com'),
        const ContactModel(name: 'Bob Doe', email: 'bobdoe@example.com'),
      ];
    },
  );

  // Execução
  blocTest(
    'Deve retornar os contatos',
    build: () => cubit,
    act: (cubit) => cubit.getContacts(),
    setUp: () {
      when(() => contactsRepository.getContacts()).thenAnswer(
        (_) async => contacts,
      );
    },
    expect: () => [
      const ContactCubitState.loading(),
      ContactCubitState.data(contacts: contacts),
    ],
  );
  blocTest(
    'Deve retornar erro ao buscar os contatos',
    build: () => cubit,
    act: (cubit) => cubit.getContacts(),
    expect: () => [
      const ContactCubitState.loading(),
      const ContactCubitState.error(
        message: 'Erro ao buscar todos os contatos',
      ),
    ],
  );

  blocTest<ContactCubitCubit, ContactCubitState>(
    'Deve deletar contato com sucesso e atualizar lista de contatos',
    build: () => cubit,
    act: (cubit) async {
      final contactToDelete = contacts[1];

      await cubit.deleteContact(contactToDelete);
    },
    setUp: () {
      // Simulando a deletação de contato
      when(() => contactsRepository.deleteContact(any())).thenAnswer(
        (_) async => Future.value(),
      );
      // Busca todos os contatos depois de deletar um contato
      when(() => contactsRepository.getContacts()).thenAnswer(
        (_) async => contacts.sublist(1),
      );
    },
    expect: () => [
      const ContactCubitState.loading(),
      ContactCubitState.data(contacts: contacts.sublist(1)),
    ],
    verify: (_) {
      verify(() => contactsRepository.deleteContact(contacts[1])).called(1);
      verify(() => contactsRepository.getContacts()).called(1);
    },
  );

  blocTest<ContactCubitCubit, ContactCubitState>(
      'Deve retornar erro ao deletar contato',
      build: () => cubit,
      act: (bloc) async {
        final contactToDelete = contacts[1];
        await cubit.deleteContact(contactToDelete);
      },
      setUp: () {
        when(() => contactsRepository.deleteContact(any())).thenThrow(
          Exception('Erro ao deletar contato'),
        );
      },
      expect: () => [
            const ContactCubitState.loading(),
            const ContactCubitState.error(
              message: 'Erro ao deletar contato',
            ),
          ],
      verify: (_) {
        verify(() => contactsRepository.deleteContact(contacts[1])).called(1);
      });
}
