import 'package:flutter/material.dart';

class SquareButton extends StatefulWidget {
  final IconData icon;
  final String text;
  const SquareButton({super.key, required this.icon, required this.text });

  @override
  State<SquareButton> createState() => _SquareButtonState();
}

class _SquareButtonState extends State<SquareButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      margin: const EdgeInsets.all(5.0),
      color: Colors.amber,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(widget.icon),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.text),
            ],
          )
        ],
      ),
    );
  }
}
