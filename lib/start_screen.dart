import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Opacity(
              opacity: 0.5,
              child: Image.asset(
                'assets/images/one.png',
                width: 300,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Learn flutter the fun way",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.arrow_right_alt_rounded),
                style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
                label: const Text("start Quiz"))
          ],
        ),
      ),
    ));
  }
}
