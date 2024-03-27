import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class DrawerHome extends StatefulWidget {
  const DrawerHome({super.key});

  @override
  State<DrawerHome> createState() => _DrawerHomeState();
}

class _DrawerHomeState extends State<DrawerHome> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      shrinkWrap: true,
      children: [
        const DrawerHeader(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Icon(FontAwesomeIcons.solidUser),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text("Matheus Santana"),
                )
              ],
            ),
          ],
        )),
        ListTile(
          leading: const Icon(FontAwesomeIcons.house),
          title: const Text('Início'),
          onTap: () {
            context.go('/homeScreen');
          },
        ),
        ListTile(
          leading: const Icon(FontAwesomeIcons.pix),
          title: const Text('Pix'),
          onTap: () {
            context.go('/pixtransfer');
          },
        ),
        ListTile(
          onTap: () {
            context.go('/extrato');
          },
          leading: const Icon(FontAwesomeIcons.moneyBillTransfer),
          title: const Text('Extrato'),
        ),
        const ListTile(
          leading: Icon(FontAwesomeIcons.creditCard),
          title: Text('Cartões'),
        ),
        const ListTile(
          leading: Icon(FontAwesomeIcons.solidCommentDots),
          title: Text('Auto atendimento'),
        ),
        ListTile(
          onTap: () {
            context.go('/');
          },
          leading: const Icon(FontAwesomeIcons.rightFromBracket),
          title: const Text('Sair'),
        ),
      ],
    ));
  }
}
