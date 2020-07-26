
import 'package:flutter/material.dart';

myapp(){
  var mytext =Text("Hello Parth First App",
  textDirection: TextDirection.ltr,
  //textAlign: TextAlign.center,
  );
  mypress(){
    print("some one click on Email... ");
  }
  mypress2(){
    print("someone click on Calander");
  }
  mypress3(){
    print("alert buttion");
  }
  var url = "https://raw.githubusercontent.com/parthdeokar/Flutter_App/master/WhatsApp%20Image%202020-04-29%20at%2001.50.11.jpeg";
  var myImages = Image.network(
    url,
    height: double.infinity,
    width: double.infinity,
    );
  var MyemailIcon =Icon(Icons.email,color: Colors.black,);
  var mycalandericon=Icon(Icons.calendar_today);
  var myalert=Icon(Icons.add_alert);
  var myaccessibility=Icon(Icons.accessibility);
  var myemailiconbutton = IconButton(icon: MyemailIcon, onPressed: mypress);
  var mycalandericonbutton = IconButton(icon: mycalandericon, onPressed: mypress2);
  var myalerticonbutton =IconButton(icon: myalert, onPressed: mypress3 );
  var myappbar = AppBar(
    title:mytext,
    backgroundColor: Colors.red,
    leading: myaccessibility,
    actions: <Widget>[myalerticonbutton,myemailiconbutton,mycalandericonbutton],
    );
   
  var myhome =Scaffold(
    appBar:myappbar,
    body: myImages,
    backgroundColor: Colors.greenAccent,
    );
  
  var design = MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );
  return design;
}

