import 'package:contact_bloc/features/contacts_cubit/update/cubit/contact_update_cubit.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactUpdatePage extends StatefulWidget {
  final ContactModel contact;

  const ContactUpdatePage({
    super.key,
    required this.contact,
  });

  @override
  State<ContactUpdatePage> createState() => _ContactUpdatePageState();
}

class _ContactUpdatePageState extends State<ContactUpdatePage> {
  final formKey = GlobalKey<FormState>();
  late final nameEC = TextEditingController(text: widget.contact.name);
  late final emailEC = TextEditingController(text: widget.contact.email);

  @override
  void dispose() {
    nameEC.dispose();
    emailEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update contact'),
      ),
      body: BlocListener<ContactUpdateCubit, ContactUpdateState>(
        listenWhen: (_, current) {
          return current.maybeWhen(
            success: () => true,
            failure: (message) => true,
            orElse: () => false,
          );
        },
        listener: (context, state) {
          state.whenOrNull(
            failure: (message) {
              return ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                  backgroundColor: Colors.red,
                ),
              );
            },
            success: () => Navigator.of(context).pop(),
          );
        },
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: nameEC,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Name is required';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Name',
                  ),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: emailEC,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email is required';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'E-mail',
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      final validate =
                          formKey.currentState?.validate() ?? false;
                      if (validate) {
                        final id = widget.contact.id!;
                        final name = nameEC.text;
                        final email = emailEC.text;
                        context.read<ContactUpdateCubit>().updateContact(
                              id,
                              name,
                              email,
                            );
                      }
                    },
                    child: const Text('Editar'),
                  ),
                ),
                // CustomLoader<ContactUpdateCubit, ContactUpdateState>(
                //   selector: (state) {},
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
