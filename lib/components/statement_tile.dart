import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:unipaulistana_bank/http/dtos/statement_dto.dart';

class StatementTile extends StatelessWidget {

  final brlFormat = NumberFormat.currency();
  // final f = DateFormat('dd-MM-yyyy HH:mm');
  final StatementDto statementItem;

  StatementTile({super.key, required this.statementItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(statementItem.type), Text(statementItem.toFromName)],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(NumberFormat.currency(symbol: 'R\$').format(statementItem.value),
                style: const TextStyle(fontSize: 16)),
            Text(
              statementItem.date,
              style: const TextStyle(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
