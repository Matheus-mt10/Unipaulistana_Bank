import 'package:flutter/material.dart';
import 'package:unipaulistana_bank/components/drawerhome_screen.dart';

class BaseScaffold extends StatelessWidget {
  final Widget body;
  final bool showAppBar;

  const BaseScaffold({
    required this.body,
    this.showAppBar = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar
          ? AppBar(
              title: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("Olá, Matheus"), Text('CPF: 123.***.***-12')],
              ),
            )
          : null,
      drawer: const DrawerHome(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: body,
      ),
    );
  }
}
