import 'package:contact_bloc/features/contacts/update/bloc/contact_update_bloc.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/widgets/custom_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactsUpdatePage extends StatefulWidget {
  final ContactModel contact;

  const ContactsUpdatePage({super.key, required this.contact});

  @override
  State<ContactsUpdatePage> createState() => _ContactsUpdatePageState();
}

class _ContactsUpdatePageState extends State<ContactsUpdatePage> {
  final _formKey = GlobalKey<FormState>();
  late final _nameEC = TextEditingController(text: widget.contact.name);
  late final _emailEC = TextEditingController(text: widget.contact.email);

  @override
  void dispose() {
    _nameEC.dispose();
    _emailEC.dispose();
    super.dispose();
  }

  void _updateContact(BuildContext context) {
    final validate = _formKey.currentState?.validate() ?? false;
    if (validate) {
      final name = _nameEC.text;
      final email = _emailEC.text;

      context.read<ContactUpdateBloc>().add(
            ContactUpdateEvent.update(
              id: widget.contact.id!,
              name: name,
              email: email,
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update contact'),
      ),
      body: BlocListener<ContactUpdateBloc, ContactUpdateState>(
        listenWhen: (previous, current) {
          return current.maybeWhen(
            error: (error) => true,
            success: () => true,
            orElse: () => false,
          );
        },
        listener: (context, state) {
          state.whenOrNull(
            error: (error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    error,
                    style: const TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.red,
                ),
              );
            },
            success: () => Navigator.of(context).pop(),
          );
        },
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                TextFormField(
                  controller: _nameEC,
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
                  controller: _emailEC,
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
                    onPressed: () => _updateContact(context),
                    child: const Text('Editar'),
                  ),
                ),
                CustomLoader<ContactUpdateBloc, ContactUpdateState>(
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
