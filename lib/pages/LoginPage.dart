import 'dart:convert';

import 'package:bankly/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:bankly/components/textfield.dart';
import 'package:http/http.dart' as http;

import '../components/ButtonComponent.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginPage(),
    );
  }
}
class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
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
          Textfield(
            controller: usernameController,
            hintText: 'Username',
            obscureText: false,
          ),
          //password
          const SizedBox(height: 15,),
          Textfield(
            controller: passwordController,
            hintText: 'Password',
            obscureText: true,
          ),
          //password forgot
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          //button
          const SizedBox(height: 20),
          ButtonComponent(
            onTap: login,
          ),
        ],

      ),
    );
  }

  Future<void> login()async {
    try{
      if(passwordController.text.isNotEmpty && usernameController.text.isNotEmpty){
        var headers = {'Content-Type':"application/json"};
        var body = {'email':usernameController.text, 'password':passwordController.text};
        print(body);
        var endodebody = jsonEncode(body);
        print(endodebody);
        var response = await http.post(Uri.parse("http://192.168.46.111:9997/api/v1/user/login"),headers: headers,body: endodebody);
        var data=jsonDecode(response.body.toString());
        print(data);
        if(response.statusCode==200){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>homePage()));
        }
        else{
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("infos invalid"),));
        }
      }else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("black field not allowed")));
      }
    }catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }
}










