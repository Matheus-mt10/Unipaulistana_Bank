import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unipaulistana_bank/components/base_scaffold.dart';
import 'package:unipaulistana_bank/components/statement_tile.dart';
import 'package:unipaulistana_bank/components/title_text.dart';
import 'package:unipaulistana_bank/http/mocks/stament_list_mock.dart';
import 'package:unipaulistana_bank/screen/bloc/statement/statement_bloc.dart';


class StatementScreen extends StatelessWidget {
  const StatementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (BuildContext context) => (),
      child: const StatementView(),
    ); 
  }
}

class StatementView extends StatefulWidget {
  const StatementView({super.key});

  @override
  State<StatementView> createState() => _StatementViewState();
}

class _StatementViewState extends State<StatementView> {
  @override
  Widget build(BuildContext context) {
    return 

    BaseScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TitleText(text: "Extrato", fontSize: 24),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: StatementMock.statementList.length,
              itemBuilder: (context, index) {
                var statementItem = StatementMock.statementList[index];

                return StatementTile(statementItem: statementItem);
              },
            )
          ],
        ),
      ),
    );
  }
}
