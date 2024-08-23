import 'package:contact_bloc/features/bloc_example/bloc_freezed_example/freezed_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocFreezedExamplePage extends StatelessWidget {
  const BlocFreezedExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Freezed Example'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<FreezedBloc>().add(
                const FreezedBlocEvent.addContact(contact: 'Jameson'),
              );
        },
        child: const Icon(Icons.add),
      ),
      body: BlocListener<FreezedBloc, FreezedBlocState>(
        listener: (context, state) {
          state.whenOrNull(
            showBanner: (_, message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                ),
              );
            },
          );
        },
        child: Column(
          children: [
            BlocSelector<FreezedBloc, FreezedBlocState, bool>(
              selector: (state) {
                return state.maybeWhen(
                    loading: () => true, orElse: () => false);
              },
              builder: (context, isLoading) {
                if (isLoading) {
                  return const Expanded(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
            BlocSelector<FreezedBloc, FreezedBlocState, List<String>>(
              selector: (state) {
                return state.maybeWhen(
                  data: (contacts) => contacts,
                  showBanner: (contacts, _) => contacts,
                  orElse: () => <String>[],
                );
              },
              builder: (context, contacts) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: contacts.length,
                  itemBuilder: (context, index) {
                    final contact = contacts[index];
                    return ListTile(
                      onTap: () {},
                      title: Text(contact),
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
