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
              backgroundColor: Colors.lightBlue,
              title: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Olá, Matheus"),
                  Row(
                    children: [
                      Text('CPF: 123.***.***-12'),
                    ],
                  )
                ],
              ),
            )
          : null,
      drawer: const DrawerHome(),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.00),
          child: body,
        ),
      ),
    );
  }
}
