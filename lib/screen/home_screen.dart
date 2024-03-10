import 'package:flutter/material.dart';
import 'package:unipaulistana_bank/components/base_scaffold.dart';
import 'package:unipaulistana_bank/components/squarebutton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const BaseScaffold(
      body: Center(
        child: Column(
          children: [
            Wrap(
              children: [
                SquareButton(),
                SquareButton(),
                SquareButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
