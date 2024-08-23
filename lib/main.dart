import 'package:contact_bloc/features/bloc_example/bloc/bloc_example_bloc.dart';
import 'package:contact_bloc/features/bloc_example/bloc_example_page.dart';
import 'package:contact_bloc/features/bloc_example/bloc_freezed_example/freezed_bloc.dart';
import 'package:contact_bloc/features/bloc_example/bloc_freezed_example_page.dart';
import 'package:contact_bloc/features/contacts/list/bloc/contact_list_bloc.dart';
import 'package:contact_bloc/features/contacts/list/contacts_list_page.dart';
import 'package:contact_bloc/features/contacts/register/bloc/contact_register_bloc.dart';
import 'package:contact_bloc/features/contacts/register/contacts_register_page.dart';
import 'package:contact_bloc/features/contacts/update/bloc/contact_update_bloc.dart';
import 'package:contact_bloc/features/contacts/update/contacts_update_page.dart';
import 'package:contact_bloc/features/contacts_cubit/add/contact_add_page.dart';
import 'package:contact_bloc/features/contacts_cubit/add/cubit/contact_add_cubit.dart';
import 'package:contact_bloc/features/contacts_cubit/list/contacts_cubit_list_page.dart';
import 'package:contact_bloc/features/contacts_cubit/list/cubit/contact_cubit_cubit.dart';
import 'package:contact_bloc/features/contacts_cubit/update/contact_update_page.dart';
import 'package:contact_bloc/features/contacts_cubit/update/cubit/contact_update_cubit.dart';
import 'package:contact_bloc/home/home_page.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:contact_bloc/widgets/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => ContactsRepository(),
      child: MaterialApp(
        title: 'Bloc Contatos',
        // theme: ThemeData(primarySwatch: Colors.amber),
        theme: CustomTheme.themeData,
        initialRoute: '/home',
        routes: {
          '/home': (_) => const HomePage(),
          '/contacts/list': (context) => BlocProvider(
                create: (context) => ContactListBloc(
                  contactsRepository: context.read<ContactsRepository>(),
                )..add(
                    const ContactListEvent.findAll(),
                  ),
                child: const ContactsListPage(),
              ),
          '/contacts/add': (_) => BlocProvider(
                create: (context) => ContactRegisterBloc(
                  contactsRepository: context.read<ContactsRepository>(),
                ),
                child: const ContactsRegisterPage(),
              ),
          '/contacts/update': (context) {
            final contact =
                ModalRoute.of(context)!.settings.arguments as ContactModel;
            return BlocProvider(
              create: (context) => ContactUpdateBloc(
                  contactsRepository: context.read<ContactsRepository>()),
              child: ContactsUpdatePage(
                contact: contact,
              ),
            );
          },
          '/bloc/example': (_) => BlocProvider(
                create: (_) => BlocExampleBloc()
                  ..add(
                    BlocExampleFindNamesEvent(),
                  ),
                child: const BlocExamplePage(),
              ),
          '/freezed/example': (context) => BlocProvider(
                create: (_) => FreezedBloc()
                  ..add(
                    const FreezedBlocEvent.findContacts(),
                  ),
                child: const BlocFreezedExamplePage(),
              ),
          '/contact/cubit/example': (context) => BlocProvider(
                create: (context) => ContactCubitCubit(
                  contactsRepository: context.read<ContactsRepository>(),
                )..getContacts(),
                child: const ContactsCubitListPage(),
              ),
          '/contact/cubit/add': (context) => BlocProvider(
                create: (context) => ContactAddCubit(
                  contactsRepository: context.read<ContactsRepository>(),
                ),
                child: const ContactAddPage(),
              ),
          '/contact/cubit/update': (context) {
            final contact =
                ModalRoute.of(context)!.settings.arguments as ContactModel;

            return BlocProvider(
              create: (context) => ContactUpdateCubit(
                contactsRepository: context.read<ContactsRepository>(),
              ),
              child: ContactUpdatePage(
                contact: contact,
              ),
            );
          }
        },
      ),
    );
  }
}
