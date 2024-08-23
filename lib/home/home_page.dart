import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Contatos'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              CardTile(
                onTap: () => Navigator.of(context).pushNamed('/bloc/example'),
                title: 'Bloc Example',
              ),
              CardTile(
                onTap: () =>
                    Navigator.of(context).pushNamed('/freezed/example'),
                title: 'Freezed Example',
              ),
              CardTile(
                onTap: () => Navigator.of(context).pushNamed('/contacts/list'),
                title: 'Contact',
              ),
              CardTile(
                onTap: () =>
                    Navigator.of(context).pushNamed('/contact/cubit/example'),
                title: 'Contact Cubit Example',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const CardTile({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onTap,
        splashColor: Colors.amber,
        child: SizedBox(
          width: 160 /* MediaQuery.of(context).size.width * 0.5 */,
          height: 160 /* MediaQuery.of(context).size.height * 0.2 */,
          child: Center(
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
