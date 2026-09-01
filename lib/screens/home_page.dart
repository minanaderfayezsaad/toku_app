import 'package:flutter/material.dart';
import 'package:toku_app/screens/family_members_page.dart';
import 'package:toku_app/screens/numbers_page.dart';
import 'package:toku_app/screens/colors_page.dart';
import 'package:toku_app/screens/phrases.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF4D9),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text("toku", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          //number ------------------------------------------------
          Category("number", Color(0xffF99531), () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return NumbersPage();
                },
              ),
            );
          }),
          //family member-------------------------------------------------
          Category("family member", Color(0xff528032), () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return FamilyMembersPage();
                },
              ),
            );
          }),
          //colors--------------------------------------------------
          Category("colors", Color(0xff7D40A2), () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return ColorsPage();
                },
              ),
            );
          }),
          //phrasas
          Category("phrases", Color(0xff47A5CB), () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return Phrases();
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Category extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  Category(this.text, this.color, this.ontap);
  String? text;
  Color? color;
  Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.only(left: 24),
        alignment: Alignment.centerLeft,
        height: 65,
        width: double.infinity,
        color: color,
        child: Text(
          "$text",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
