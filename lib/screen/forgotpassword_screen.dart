import 'package:flutter/material.dart';
import 'package:unipaulistana_bank/components/base_scaffold.dart';
import 'package:unipaulistana_bank/components/input.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              'Insira o Email cadastrado para receber o código de verificação',
              style: TextStyle(fontSize: 22),
            ),
          ),
          const Input(label: "Email"),
          FilledButton(onPressed: () {}, child: const Text("Enviar"))
        ],
      ),
    );
  }
}
