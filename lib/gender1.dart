
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class geder1 extends StatelessWidget {
 final IconData icon;
  final String text;
 final Color color;
 final Color? color2;
  geder1({
    required this.text,
    required this.icon,
     this.color = Colors.grey,
    this.color2 = CupertinoColors.black,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: Padding(
        padding:
        const EdgeInsets.only(left: 7, right: 5, bottom: 5),
        child: Container(
          child: Column(
            children: [
              Icon(
                icon,
                size: 100,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: color2,
                ),
              )
            ],
          ),
          height: 170,
          width: 170,
          //margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }
}
