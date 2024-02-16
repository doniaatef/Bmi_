
import 'package:flutter/cupertino.dart';

class geder extends StatelessWidget {
  IconData icon;
  String text;
  Color? color;
   geder({
    required this.text,
    required this.icon,
     this.color = CupertinoColors.black,
});
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                color: color,
              ),
            )
          ],
        ),
        //color: Colors.blueGrey,
        height: 170,
        width: 170,
        //margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
