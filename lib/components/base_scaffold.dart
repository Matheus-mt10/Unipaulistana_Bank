import 'package:flutter/material.dart';
import 'package:unipaulistana_bank/components/drawerhome_screen.dart';

class BaseScaffold extends StatelessWidget {
  final Widget body;
  const BaseScaffold({
    required this.body,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      drawer: const DrawerHome(
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: body,
      ),
    );
  }
}
