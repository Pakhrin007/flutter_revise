import 'package:flutter/material.dart';

class AnwserBtn extends StatelessWidget {
  AnwserBtn({super.key, required this.anwserText, required this.onTap});

  final String anwserText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40))),
        child: Text(anwserText));
  }
}
