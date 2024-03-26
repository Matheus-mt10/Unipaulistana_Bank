import 'package:flutter/material.dart';

class StatementTile extends StatelessWidget {
  final StatementDto statementItem;

  const StatementTile({super.key, required this.statementItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(statement.type), Text(statement.toFromName)],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(NumberFormat.currency(symbol: 'R\$').format(statement.value),
                style: const TextStyle(fontSize: 16)),
            Text(
              statement.date,
              style: const TextStyle(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
