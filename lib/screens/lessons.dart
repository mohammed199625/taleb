import 'package:flutter/material.dart';
import 'package:taleb/widgets/my_appbar.dart';
import 'package:taleb/widgets/drawer.dart';

class Lessons extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar('Lessons'),
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
          // child: ,
        ));
  }
}
