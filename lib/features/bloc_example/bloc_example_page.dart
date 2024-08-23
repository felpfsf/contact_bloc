import 'package:contact_bloc/features/bloc_example/bloc/bloc_example_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocExamplePage extends StatelessWidget {
  const BlocExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Example'),
      ),
      body: BlocListener<BlocExampleBloc, BlocExampleState>(
        listenWhen: (previous, current) {
          // Aqui podemos fazer o controle de quando o bloc vai ser atualizado
          // if (previous is BlocExampleStateInitial &&
          //     current is BlocExampleStateData) {
          //   return current.names.length > 3;
          // }

          // return false;
          // ou simplificando
          return current is BlocExampleStateData;
        },
        listener: (context, state) {
          if (state is BlocExampleStateData) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('A quantidade de nomes é ${state.names.length}'),
              ),
            );
          }
        },
        child: Column(
          children: [
            // Container(
            //   height: 50,
            //   // width: MediaQuery.of(context).size.width * 0.8,
            //   padding: const EdgeInsets.symmetric(horizontal: 16),
            //   child: TextField(
            //     decoration: const InputDecoration(
            //       hintText: 'Digite um nome',
            //       fillColor: Colors.yellow,
            //     ),
            //     onChanged: (value) {
            //       print(value);
            //     },
            //   ),
            // ),
            ElevatedButton(
              onPressed: () {
                context.read<BlocExampleBloc>().add(
                      BlocExampleAddNameEvent('Adam'),
                    );
              },
              child: const Text('Adicionar Adam'),
            ),
            const SizedBox(height: 20),
            // Consumer tem o mesmo comportamento que o BlocBuilder e o BlocListener
            BlocConsumer<BlocExampleBloc, BlocExampleState>(
              // Aqui podemos fazer o controle de quando o bloc vai ser buildado
              buildWhen: (previous, current) {
                if (previous is BlocExampleStateInitial &&
                    current is BlocExampleStateData) {
                  return current.names.length > 3;
                }

                return false;
              },
              listener: (context, state) {
                if (state is BlocExampleStateData) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'BlocConsumer - Estado alterado para ${state.runtimeType}'),
                    ),
                  );
                }
              },
              builder: (_, state) {
                if (state is BlocExampleStateData) {
                  return Text(
                      'BlocConsumer - Names length: ${state.names.length}');
                }
                return const Center(
                  child: Text('BlocConsumer - Nenhum dado encontrado'),
                );
              },
            ),
            // Seletor é usado para retornar um valor de um bloc
            BlocSelector<BlocExampleBloc, BlocExampleState, bool>(
              selector: (state) =>
                  state is BlocExampleStateInitial ? true : false,
              builder: (context, showLoader) {
                if (showLoader) {
                  return const Expanded(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
            BlocSelector<BlocExampleBloc, BlocExampleState, List<String>>(
              selector: (state) =>
                  state is BlocExampleStateData ? state.names : [],
              builder: (context, names) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: names.length,
                  itemBuilder: (context, index) {
                    final name = names[index];
                    return ListTile(
                      onTap: () {
                        context.read<BlocExampleBloc>().add(
                              BlocExampleRemoveNameEvent(name),
                            );
                      },
                      title: Text(name),
                    );
                  },
                );
              },
            ),

            // BlocBuilder<BlocExampleBloc, BlocExampleState>(
            //   builder: (context, state) {
            //     if (state is BlocExampleStateData) {
            //       return ListView.builder(
            //         shrinkWrap: true,
            //         itemCount: state.names.length,
            //         itemBuilder: (context, index) {
            //           return ListTile(
            //             title: Text(state.names[index]),
            //           );
            //         },
            //       );
            //     }
            //     return const Center(
            //       child: Text('Nenhum dado encontrado'),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
