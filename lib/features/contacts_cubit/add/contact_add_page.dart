import 'package:contact_bloc/features/contacts_cubit/add/cubit/contact_add_cubit.dart';
import 'package:contact_bloc/widgets/custom_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactAddPage extends StatefulWidget {
  const ContactAddPage({super.key});

  @override
  State<ContactAddPage> createState() => _ContactAddPageState();
}

class _ContactAddPageState extends State<ContactAddPage> {
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  final emailEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add contact'),
      ),
      body: BlocListener<ContactAddCubit, ContactAddState>(
        listenWhen: (previous, current) {
          return current.maybeWhen(
            failure: (message) => true,
            success: () => true,
            orElse: () => false,
          );
        },
        listener: (context, state) {
          state.whenOrNull(
            failure: (message) {
              return ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    message,
                    style: const TextStyle(
                      color: Colors.white,
                      backgroundColor: Colors.red,
                    ),
                  ),
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
                  decoration: const InputDecoration(
                    labelText: 'Nome',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Preencha o nome';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: emailEC,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Preencha o email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        final name = nameEC.text;
                        final email = emailEC.text;
                        context.read<ContactAddCubit>().addContact(name, email);
                      }
                    },
                    child: const Text('Adicionar'),
                  ),
                ),
                CustomLoader<ContactAddCubit, ContactAddState>(
                  selector: (state) {
                    return state.maybeWhen(
                      loading: () => true,
                      orElse: () => false,
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
