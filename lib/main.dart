import 'package:bmi/pages/bmi.dart';
import 'package:bmi/pages/signUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi/gender1.dart';

void main() {
  runApp(bmi());
}

class bmi extends StatefulWidget {
  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  double currenValue = 80.0;
  int weight = 0; 
  int age = 0;
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Bmi(),
    );
  }
}
