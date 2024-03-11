import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../gender1.dart';
class Bmi extends StatefulWidget {
  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  String? gender ;
  double currenValue = 80.0;
  int weight = 0;
  int age = 0;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          'Body Mass Index',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              children: [
                geder1(
                  text: 'Female',
                  icon: Icons.female_outlined,
                  color: gender=='Female'? Colors.blueGrey : Colors.grey,
                  onpressed: (){
                    setState(() {
                      gender = 'Female';
                    });
                  },
                ),
                geder1(
                  text: 'Male',
                  icon: Icons.male_outlined,
                  color: gender=='male'? Colors.blueGrey : Colors.grey,
                  onpressed: (){
                    setState(() {
                      gender = 'male';
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 7, bottom: 5, right: 7),
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      'Height',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(
                          '${currenValue.round()}',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                    Slider(
                        min: 0,
                        max: 220,
                        divisions: 100,
                        activeColor: Colors.indigo,
                        thumbColor: Color(0xff1D3857),
                        inactiveColor: Colors.blueGrey,
                        value: currenValue,
                        onChanged: (value) {
                          setState(() {
                            currenValue = value;
                          });
                        }),
                  ],
                ),
                height: 80,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 7, right: 7, bottom: 5),
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          'Weight',
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '$weight',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 25, bottom: 20),
                              child: FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    if (weight > 0) weight--;
                                  });
                                },
                                heroTag: 'sub1',
                                backgroundColor: Colors.blueGrey,
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                  size: 25,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 45, bottom: 20),
                              child: FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    if (weight >= 0) weight++;
                                  });
                                },
                                heroTag: 'add1',
                                backgroundColor: Colors.blueGrey,
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                  size: 25,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    //color: Colors.blueGrey,
                    height: 170,
                    width: 170,
                    //margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7, right: 7, bottom: 5),
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          'Age',
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '$age',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 25, bottom: 20),
                              child: FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    if (age > 0) age--;
                                  });
                                },
                                heroTag: 'sub2',
                                backgroundColor: Colors.blueGrey,
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                  size: 25,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 45, bottom: 20),
                              child: FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    if (age >= 0) age++;
                                  });
                                },
                                heroTag: 'add2',
                                backgroundColor: Colors.blueGrey,
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                  size: 25,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    //color: Colors.blueGrey,
                    height: 170,
                    width: 170,
                    //margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, bottom: 10, right: 5),
            child: Container(
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      currenValue /= 100;
                      result = weight / (currenValue * currenValue);
                    });
                    showDialog(context: context, builder: (context) {
                      return AlertDialog(
                        title: Text('The Result'),
                        content: Text('$result'),
                      );
                    },);
                  },
                  child: Text(
                    'Calculate',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                  )),
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(20)),
            ),
          )
        ],
      ),
    );
  }
}
