import 'package:flutter/material.dart';

class SquareButton extends StatefulWidget {
  final IconData icon;
  final String text;
  const SquareButton({super.key, required this.icon, required this.text});

  @override
  State<SquareButton> createState() => _SquareButtonState();
}

class _SquareButtonState extends State<SquareButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.lightBlue,
      ),
      width: 100,
      height: 100,
      margin: const EdgeInsets.all(5.0),
      child: Column(
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
