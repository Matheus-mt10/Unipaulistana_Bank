import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  const Input({
    required this.label,
    this.ObscureText = false,
    super.key,
  });

  final String label;
  final bool ObscureText;

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextField(
        decoration: InputDecoration(
            border: const OutlineInputBorder(), labelText: widget.label),
        obscureText: widget.ObscureText,
      ),
    );
  }
}
