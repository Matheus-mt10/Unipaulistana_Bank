import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:unipaulistana_bank/components/base_scaffold.dart';
import 'package:unipaulistana_bank/components/squarebutton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _showBalance = true;

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Bem vindo(a)',
                style: TextStyle(fontSize: 24),
              ),
              Row(
                children: [
                  Text(_showBalance ? 'Saldo: R\$ 1.000,00' : 'Saldo: --',
                      style: const TextStyle(fontSize: 24)),
                  IconButton(
                      onPressed: () {
                        _showBalance = !_showBalance;
                        setState(() {});
                      },
                      icon: Icon(_showBalance
                          ? FontAwesomeIcons.eye
                          : FontAwesomeIcons.eyeSlash))
                ],
              ),
              const Wrap(
                children: [
                  SquareButton(
                    icon: FontAwesomeIcons.pix,
                    text: 'Pix',
                  ),
                  SquareButton(
                      icon: FontAwesomeIcons.cashRegister, text: 'Extrato'),
                  SquareButton(
                      icon: FontAwesomeIcons.creditCard, text: 'Cartões'),
                  SquareButton(
                      icon: FontAwesomeIcons.moneyBillTransfer,
                      text: 'Tranferências')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
