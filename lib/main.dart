import 'package:flutter/material.dart';
import 'pages/HomePage.dart';
import 'pages/HomeWithSidebar.dart';
import 'pages/LoginPage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        '/homePage' : (context)=>HomePage(),
      },
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/sideImg.png'),
                fit: BoxFit.cover
              )
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.7,
            padding: EdgeInsets.symmetric(vertical: 60,horizontal:29 ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text("06:22 AM",style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'avenir',
                        fontWeight: FontWeight.w500
                    ),),
                    Expanded(
                      child: Container(),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/cloud.png'),
                          fit: BoxFit.contain
                        ) 
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text("34° C",style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'avenir',
                      fontWeight: FontWeight.w800
                    ),)
                  ],
                ),
                Text("Feb 8, 2023 | Tuesday",style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey
                ),
                ),
                Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/logo.png'),
                                fit: BoxFit.contain
                              )
                            ),
                          ),
                          Text('Bankly',style: TextStyle(
                            fontSize: 50,
                            fontFamily: 'ubuntu',
                            fontWeight: FontWeight.w600
                          ),),
                          SizedBox(height: 10,),
                          Text('Open An Account For \nDigital E-Wallet Solution. \nInstant Payouts.\n\nJoin For Free',style: TextStyle(
                            color: Colors.grey
                          ),)
                        ],
                      ),
                    )
                ),
                InkWell(
                  onTap: openHomePage,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFAC30),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Sign Up",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),
                          Icon(Icons.arrow_forward,size: 17)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text('Create an account',style: TextStyle(
                    fontSize: 16
                  ),),
                )
              ],
            ),
          )
        ],
      ),

    );

  }
  void openHomePage(){
    Navigator.pushNamed(context, '/homePage');
  }
}

