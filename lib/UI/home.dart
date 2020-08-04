import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';


myapp1(){
  FlutterStatusbarcolor.setStatusBarColor(Colors.blue);
  myprint(){
    print("hello parth here");
  }
  mytost(){
    Fluttertoast.showToast(
        msg: "This is is your Profile",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

    var mybody = Container(
    alignment: Alignment.center,
    width:double.maxFinite,
    height:double.maxFinite,
    color: Colors.red,
    margin: EdgeInsets.all(20),

    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(   
          color:Colors.amber,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
           color: Colors.black,
            width: 5,
            ),),
          margin: EdgeInsets.all(50),
          //alignment: Alignment.center,
           width:500,
           height:180,
          //color:Colors.red,
           child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
            Text("Parth Deokar",  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
            Row(mainAxisAlignment:MainAxisAlignment.center,
              children: <Widget>[
              Icon(Icons.email),
              Text("parth@gmail.com",  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ],),
           ]
           )
           ),
           InkWell( 
             // we can use GestureDetection()
            onTap: myprint,
                  child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://raw.githubusercontent.com/parthdeokar/Flutter_App/master/149.jpg"),
              fit: BoxFit.cover,
                ),
              color:Colors.green,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
             color: Colors.red,
              width: 5,
            ),
            ),
            //margin: EdgeInsets.all(30),
            //padding: EdgeInsets.only(left:10),
            alignment: Alignment.center,
             width:100,
             height:100,
            //color:Colors.amber,
            //child: Text("Second"),                
          ),
        ),
            ]    
    ),

  );
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        backgroundColor : Colors.amber,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add_a_photo), onPressed: null),
          IconButton(icon: Icon(Icons.account_circle), onPressed: mytost),
                  ],
        ),
      body: mybody,  ),
       );
}