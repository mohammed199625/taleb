import 'package:flutter/material.dart';
import 'package:taleb/functions/custom_launcher.dart';
import 'package:taleb/screens/ask_teacher.dart';
import 'package:taleb/screens/contact.dart';
import 'package:taleb/screens/exams.dart';
import 'package:taleb/screens/lessons.dart';
import 'package:taleb/screens/live.dart';
import 'package:taleb/screens/student_reports.dart';
import 'gridview_single_item.dart';
import 'package:taleb/screens/pdf.dart';

class GridViewItems extends StatefulWidget {
  @override
  _GridViewItemsState createState() => _GridViewItemsState();
}

class _GridViewItemsState extends State<GridViewItems> {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: <Widget>[
        SingleGridViewItem(
          name: 'Lessons',
          pictureName: 'images/lessons.png',
          onTaped: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => Lessons())),
        ),
        SingleGridViewItem(
          name: 'PDF',
          pictureName: 'images/pdf.png',
          onTaped: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => Pdf())),
        ),
        SingleGridViewItem(
          name: 'Live',
          pictureName: 'images/live.webp',
          onTaped: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => Live())),
        ),
        SingleGridViewItem(
          name: 'Exams',
          pictureName: 'images/exams.png',
          onTaped: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => Exams())),
        ),
        SingleGridViewItem(
          name: 'Homework',
          pictureName: 'images/homework.png',
          onTaped: () => customLauncher('whatsapp://send?phone=+20 100 620 9613'),
        ),
        SingleGridViewItem(
          name: 'Student Reports',
          pictureName: 'images/reports.png',
          onTaped: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => StudentReports())),
        ),
        SingleGridViewItem(
          name: 'Ask Teacher',
          pictureName: 'images/teacher.png',
          onTaped: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => AskTeacher())),
        ),
        SingleGridViewItem(
          name: 'Contact US',
          pictureName: 'images/contact.jpg',
          onTaped: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => Contacts())),
        ),
      ],
    );
  }
}
