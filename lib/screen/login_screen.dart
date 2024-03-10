import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:unipaulistana_bank/components/base_scaffold.dart';
import 'package:unipaulistana_bank/components/input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      showAppBar: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              "Utilize o seu Usuário e senha para entrar",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          const Input(label: "Login"),
          const Input(
            label: "Senha",
            ObscureText: true,
          ),
          Wrap(
            children: [
              FilledButton(
                  onPressed: () {
                    context.push('/homeScreen');
                  },
                  child: const Text("Login")),
              TextButton(
                  onPressed: () {
                    context.push('/forgotPassword');
                  },
                  child: const Text('Esqueci minha senha'))
            ],
          ),
        ],
      ),
    );
  }
}
