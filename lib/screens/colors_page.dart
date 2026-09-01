import 'package:flutter/material.dart';
import 'package:toku_app/class.dart';
import 'package:toku_app/row_items_family.dart';

class ColorsPage extends StatelessWidget {
  final List<Member> colorsList = [
    Member(
      image: "assets/images/colors/color_black.png",
      jpname: "Burakku",
      enname: "black",
      sound: "sounds/colors/black.wav",
    ),
    Member(
      image: "assets/images/colors/color_brown.png",
      jpname: "Chairo",
      enname: "brown",
      sound: "sounds/colors/brown.wav",
    ),
    Member(
      image: "assets/images/colors/color_dusty_yellow.png",
      jpname: "Hokori ppoi kiiro",
      enname: "dusty yellow",
      sound: "sounds/colors/dusty yellow.wav",
    ),
    Member(
      image: "assets/images/colors/color_gray.png",
      jpname: "Gurē",
      enname: "gray",
      sound: "sounds/colors/gray.wav",
    ),
    Member(
      image: "assets/images/colors/color_green.png",
      jpname: "Midori",
      enname: "green",
      sound: "sounds/colors/green.wav",
    ),
    Member(
      image: "assets/images/colors/color_red.png",
      jpname: "Aka",
      enname: "red",
      sound: "sounds/colors/red.wav",
    ),
    Member(
      image: "assets/images/colors/color_white.png",
      jpname: "Shiro",
      enname: "white",
      sound: "sounds/colors/white.wav",
    ),
    Member(
      image: "assets/images/colors/yellow.png",
      jpname: "Kiiro",
      enname: "yellow",
      sound: "sounds/colors/yellow.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF4D9),
      appBar: AppBar(
        title: Text("colors", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: colorsList.length,
        itemBuilder: (context, index) {
          return RowItems(member: colorsList[index], pagecolor: 0xff79359F);
        },
      ),
    );
  }
}
