import 'package:flutter/material.dart';
import 'package:bankly/components/textfield.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          //logo
          Container(
            height: 80,
            margin: EdgeInsets.only(top: 100),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/logo.png'),fit: BoxFit.fitHeight),
            ),
          ),
          //welcome back
          const SizedBox(height: 50,),
          Text('Welcome back you\'ve been missed!',style: TextStyle(
            color: Colors.grey[700],
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),),
          const SizedBox(height: 50,),
          //username
            Textfield(),
          //password
          const SizedBox(height: 25,),
          Textfield(),
          //password forgot

          //button
        ],

      ),
    );
  }

}