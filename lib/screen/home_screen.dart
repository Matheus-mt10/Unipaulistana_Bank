import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:unipaulistana_bank/components/base_scaffold.dart';
import 'package:unipaulistana_bank/components/squarebutton.dart';
import 'package:unipaulistana_bank/components/statement_tile.dart';
import 'package:unipaulistana_bank/components/title_text.dart';
import 'package:unipaulistana_bank/http/mocks/stament_list_mock.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _showBalance = true;

  var brlFormat = NumberFormat.currency();

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
                  Text(
                      _showBalance
                          ? 'Saldo: ${brlFormat.format(1000)} R\$ '
                          : 'Saldo: --',
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
                      icon: FontAwesomeIcons.moneyBillTransfer,
                      text: 'Extrato'),
                  SquareButton(
                      icon: FontAwesomeIcons.creditCard, text: 'Cartões'),
                  SquareButton(
                      icon: FontAwesomeIcons.moneyBillTransfer,
                      text: 'Tranferências')
                ],
              ),
              const TitleText(text: 'Últimas transações', fontSize: 30),
              ListView.builder(
                shrinkWrap: true,
                itemCount: StatementMock.statementList.length > 3
                    ? 3
                    : StatementMock.statementList.length,
                itemBuilder: (context, index) {
                  var statement = StatementMock.statementList[index];

                  return StatementTile(statementItem: statement);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
