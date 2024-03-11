
import 'package:bmi/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'bmi.dart';
class signup extends StatelessWidget {
GlobalKey<FormState> formstate = GlobalKey();
GlobalKey<FormState> formstate2 = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
        ),
        ),
      ),
      body: Form(
        key: formstate,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                validator: (value) {
                  if(value!.isEmpty)
                    return 'Please Enter your Email';
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter email',
                   hintStyle: TextStyle(
                     fontSize: 15,
                     color: Colors.grey
                   ),
                   label: Text('Email'),
                  suffixIcon: Icon(Icons.email_outlined),
                  constraints: BoxConstraints.expand(width: 350,height: 40)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                validator: (value) {
                  if(value!.isEmpty)
                    return 'Please Enter your Password';
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter password',
                   hintStyle: TextStyle(
                     fontSize: 15,
                     color: Colors.grey
                   ),
                   label: Text('Password'),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  constraints: BoxConstraints.expand(width: 350,height: 40)
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  IconButton(onPressed: (){
                    if(formstate.currentState!.validate() && formstate2.currentState!.validate()) {
                      Navigator.push(context, MaterialPageRoute(builder: (
                          context) {
                        return Bmi();
                      },));
                    }
                  }, icon: Icon(Icons.login,
                  size: 18,
                    color: Colors.white,
                  )),
                  Text('login',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white
                  ),
                  )
                ],
              ),
              width: 100,
              height: 30,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
