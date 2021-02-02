import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taleb/screens/my_home_page.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 2),
        (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'images/LinuxLogo.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
