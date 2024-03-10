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
      children: [
        const DrawerHeader(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              children: [
                Icon(FontAwesomeIcons.solidUser),
                Text("Matheus Santana")
              ],
            ),
          ],
        )),
        const ListTile(
          leading: Icon(FontAwesomeIcons.idBadge),
          title: Text('Minha conta'),
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
