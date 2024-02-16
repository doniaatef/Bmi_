
import 'package:flutter/material.dart';

class loginPsge extends StatelessWidget {
   loginPsge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
