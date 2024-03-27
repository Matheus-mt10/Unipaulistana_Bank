import 'package:flutter/material.dart';
import 'package:unipaulistana_bank/components/base_scaffold.dart';
import 'package:unipaulistana_bank/components/statement_tile.dart';
import 'package:unipaulistana_bank/components/title_text.dart';
import 'package:unipaulistana_bank/http/mocks/stament_list_mock.dart';

class StatementScreen extends StatefulWidget {
  const StatementScreen({super.key});

  @override
  State<StatementScreen> createState() => _StatementScreenState();
}

class _StatementScreenState extends State<StatementScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
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
