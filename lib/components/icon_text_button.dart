import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {
  final IconData icon;
  final Widget primaryText;
  const IconTextButton(
      {super.key, required this.icon, required this.primaryText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).primaryColor,
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.abc,
              size: 50,
            ),
          ),
        ),
        primaryText,
      ],
    );
  }
}
