import 'package:flutter/material.dart';
import 'package:unipaulistana_bank/components/base_scaffold.dart';

class PixTransferScreen extends StatefulWidget {
  const PixTransferScreen({super.key});

  @override
  State<PixTransferScreen> createState() => _PixTransferScreenState();
}

class _PixTransferScreenState extends State<PixTransferScreen> {
  @override
  Widget build(BuildContext context) {
    return const BaseScaffold(
      body: Column(
        children: [Text('data')],
      ),
    );
  }
}