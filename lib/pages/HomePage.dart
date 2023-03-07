import 'package:flutter/material.dart';
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}
class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/logo.png'),
                        )
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text("Bankly",style:TextStyle(
                      color: Colors.black,
                      fontFamily: 'ubuntu',
                      fontSize: 25
                    ),)
                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            Text("Account Overview",style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w800,
              fontFamily: 'avenir'
            ),),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color(0xFFF1F3F6),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("20,600",style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700
                      ),),
                      SizedBox(height: 5,),
                      Text("Current balance",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),)
                    ],
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange
                    ),
                    child: Icon(
                      Icons.add,size: 30,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Send Money",style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'avenir'
                ),),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/scanqr.png'))
                  ),
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection:Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange
                    ),
                    child: Icon(
                      Icons.add,
                      size: 40,
                    ),
                  ),
                  avatarWidget("avatar1","Raouya"),
                  avatarWidget("avatar2","Yasser"),
                  avatarWidget("avatar3","Saida"),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment:  MainAxisAlignment.spaceBetween,
              children: [
                Text('Service',style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'avenir'
                ),),
                Container(
                  height: 60,
                  width: 60,
                  child: Icon(Icons.dialpad),
                )
              ],
            ),
            Container(
              child: Column(
                children: [
                  serviceWidget(300,"Sendoney","Sendoney"),
                  serviceWidget(-30042,"ReceiveMoney","Sendoney"),
                  serviceWidget(1042,"MobileRecharge","Sendoney"),
                  serviceWidget(-5009,"ElectricityBill","Sendoney"),
                  serviceWidget(-5009,"ElectricityBill","Sendoney"),
                  serviceWidget(-5009,"ElectricityBill","Sendoney"),
                  serviceWidget(-5009,"ElectricityBill","Sendoney"),
                ],

              ),
            ),

          ],
        ),
      ),
    );
  }
  Container serviceWidget(double amout, String date,String wallet) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color(0xFFF1F3F6),
      ),
      child: Row(
        children: [
          Text('Service',style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w800,
              fontFamily: 'avenir'
          ),),
          Container(
            height: 10,
            width: 10,
            child: Icon(Icons.dialpad),
          )

        ],
      ),
    );
  }
  Container avatarWidget(String img,String name){
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 150,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Color(0xFFF1F3F6)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              image: DecorationImage(image: AssetImage('assets/images/$img.png'),
              fit: BoxFit.contain
              ),
              border: Border.all(
                color: Colors.black,
                width: 1
              )
            ),
          ),
          Text(name,style: TextStyle(
            fontFamily: 'avenir',
            fontSize: 16,
            fontWeight: FontWeight.w700
          ),)
        ],
      ),
    );
  }
}
