import 'package:contact_bloc/features/contacts_cubit/list/cubit/contact_cubit_cubit.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/widgets/custom_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactsCubitListPage extends StatelessWidget {
  const ContactsCubitListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts cubit list'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.of(context).pushNamed('/contact/cubit/add');
          if (context.mounted) {
            context.read<ContactCubitCubit>().getContacts();
          }
        },
        backgroundColor: Colors.amber,
        child: const Icon(Icons.add),
      ),
      body: RefreshIndicator(
        onRefresh: () => context.read<ContactCubitCubit>().getContacts(),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Column(
                children: [
                  CustomLoader<ContactCubitCubit, ContactCubitState>(
                    selector: (state) {
                      return state.maybeWhen(
                        loading: () => true,
                        orElse: () => false,
                      );
                    },
                  ),
                  BlocSelector<ContactCubitCubit, ContactCubitState,
                      List<ContactModel>>(
                    selector: (state) {
                      return state.maybeWhen(
                        data: (contacts) => contacts,
                        orElse: () => <ContactModel>[],
                      );
                    },
                    builder: (_, contacts) {
                      return ListView.separated(
                        separatorBuilder: (context, index) {
                          return const SizedBox(height: 12);
                        },
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: contacts.length,
                        itemBuilder: (context, index) {
                          final contact = contacts[index];
                          return Dismissible(
                            key: Key(contact.id.toString()),
                            direction: DismissDirection.endToStart,
                            onDismissed: (direction) {
                              context
                                  .read<ContactCubitCubit>()
                                  .deleteContact(contact);
                            },
                            background: Container(
                              color: Colors.amber,
                            ),
                            secondaryBackground: Container(
                              padding: const EdgeInsets.only(right: 32),
                              color: Colors.red,
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.delete, color: Colors.white),
                                      SizedBox(height: 8),
                                      Text(
                                        'Excluir',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            child: ListTile(
                              onTap: () async {
                                await Navigator.of(context).pushNamed(
                                  '/contact/cubit/update',
                                  arguments: contact,
                                );

                                if (context.mounted) {
                                  context
                                      .read<ContactCubitCubit>()
                                      .getContacts();
                                }
                              },
                              tileColor: Colors.amber,
                              title: Text(contact.name),
                              subtitle: Text(contact.email),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
