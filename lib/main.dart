import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/Helpers/Helpers.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final page = [
    Container(
      alignment: Alignment.center,
      color: Colors.lightBlueAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("images/Banner1.jpg"),
          ),
          SizedBox(
            height: 10,
          ),
          Text("Manodwells", style: TextStyle(color: Colors.black38, fontSize: 25,
              fontWeight: FontWeight.bold),),
         Card(
           color: Colors.white,
           margin: EdgeInsets.symmetric(vertical : 10, horizontal: 25),
           child:  Padding(
             padding: EdgeInsets.all(15),
             child: Row(children: <Widget>[
               Icon(Icons.phone,
               color: Colors.black38,),
               SizedBox(
                height: 10,
               ),
              Text("8056392713", style: TextStyle(color: Colors.purple, fontSize: 22, fontWeight: FontWeight.bold),),


             ],
             ),
           ),

         ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical : 10, horizontal: 25),
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Row(children: <Widget>[
                Icon(Icons.email, color: Colors.black38,),
                SizedBox(
                  height: 10,
                ),
                Text("manodwells@gmail.com", style: TextStyle(color: Colors.purple, fontSize: 22, fontWeight: FontWeight.bold),),
              ],),
            )
          )
        ],
      ),
    ),
    Container(
      child: Image.asset("images/S1.jpeg"),
    ),
    Container(
      child: Image.asset("images/7.jpg"),
    ),
    Container(
      child: Image.asset("images/5.jpg"),
    ),
    Container(
      child: Image.asset("images/2.jpg"),
    ),
    Container(
      color: Colors.orange,
      child: Column(
        children: <Widget>[
          Image.asset("images/Scene3.JPG"),
          Padding(
            padding:EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Text("ManoFirst", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                ),],
            ),
          ),
//          SizedBox(
//            height: 10,),
//            Text("DemoTestDemoTestDemoTest\n DemoTestDemoTestDemoTest\n DemoTestDemoTest",
//              style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
//          ),

        ],
      ),
    ),
    Container(
      color: Colors.orange,
      child: Column(
        children: <Widget>[
          Image.asset("images/Scene2.JPG"),
          Padding(
            padding:EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Text("ManoFirst", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                ),],
            ),
          ),
//          SizedBox(
//            height: 10,),
//            Text("DemoTestDemoTestDemoTest\n DemoTestDemoTestDemoTest\n DemoTestDemoTest",
//              style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
//          ),

        ],
      ),
    ),
    Container(
      child: Image.asset("images/1.jpg"),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LiquidSwipe(
            pages: page,
          enableLoop: true,
          fullTransitionValue: 300,
          enableSlideIcon: true,
          waveType: WaveType.liquidReveal,
          positionSlideIcon: 0.5,

        ),
      ),

    );
  }
}
