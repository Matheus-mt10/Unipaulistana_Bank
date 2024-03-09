import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      children: const [
        DrawerHeader(
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
        ListTile(
          title: Text('Serviços'),
        ),
        ListTile(
          title: Text('Minha conta'),
        ),
        ListTile(
          title: Text('Cartões'),
        ),
        ListTile(
          title: Text('Auto atendimento'),
        ),
        ListTile(
          title: Text('Sair'),
        ),
      ],
    ));
  }
}
