import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taleb/functions/custom_launcher.dart';
import 'package:taleb/widgets/my_appbar.dart';
import 'package:taleb/widgets/drawer.dart';

class Contacts extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar('Ask Teacher'),
        drawer: MyDrawer(),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/onlinecourse.jpg"),
              fit: BoxFit.cover,
              colorFilter:
              ColorFilter.mode(Colors.black45, BlendMode.darken),
            ),
          ),
          child:Center(
            child: Column(
mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 50,),
                RaisedButton(onPressed: () {
                  customLauncher(
                      "tel:+20 100 620 6913");
                },
                  child: Text('Call Linux ',style: TextStyle(fontWeight: FontWeight.bold),),
                ),

                RaisedButton(onPressed: () {
                  customLauncher('whatsapp://send?phone=+20 100 620 9613');
                },
                  child: Text('Linux Whatsapp',style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ) ,
        ),
    );
  }
}
