import 'package:flutter/material.dart';
import 'package:toku_app/class.dart';
import 'package:toku_app/row_items_family.dart';
// ignore: must_be_immutable, use_key_in_widget_constructors
class NumbersPage extends StatelessWidget {
  final List<Member> numberslist = [
    Member(
      image: "assets/images/numbers/number_one.png",
      jpname: "ichi",
      enname: "one",
      sound: "sounds/numbers/number_one_sound.mp3",
    ),
    Member(
      image: "assets/images/numbers/number_two.png",
      jpname: "ni",
      enname: "two",
      sound: "sounds/numbers/number_two_sound.mp3",
    ),
    Member(
      image: "assets/images/numbers/number_three.png",
      jpname: "san",
      enname: "three",
      sound: "sounds/numbers/number_three_sound.mp3",
    ),
    Member(
      image: "assets/images/numbers/number_four.png",
      jpname: "shi",
      enname: "four",
      sound: "sounds/numbers/number_four_sound.mp3",
    ),
    Member(
      image: "assets/images/numbers/number_five.png",
      jpname: "go",
      enname: "five",
      sound: "sounds/numbers/number_five_sound.mp3",
    ),
    Member(
      image: "assets/images/numbers/number_six.png",
      jpname: "roku",
      enname: "six",
      sound: "sounds/numbers/number_six_sound.mp3",
    ),
    Member(
      image: "assets/images/numbers/number_seven.png",
      jpname: "sebun",
      enname: "seven",
      sound: "sounds/numbers/number_seven_sound.mp3",
    ),
    Member(
      image: "assets/images/numbers/number_eight.png",
      jpname: "hachi",
      enname: "eight",
      sound: "sounds/numbers/number_eight_sound.mp3",
    ),
    Member(
      image: "assets/images/numbers/number_nine.png",
      jpname: "kyu",
      enname: "nine",
      sound: "sounds/numbers/number_nine_sound.mp3",
    ),
    Member(
      image: "assets/images/numbers/number_ten.png",
      jpname: "ju",
      enname: "ten",
      sound: "sounds/numbers/number_ten_sound.mp3",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF4D9),
      appBar: AppBar(
        title: Text("numbers", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        //loop to build number objects
        itemCount: numberslist.length,
        itemBuilder: (context, index) {
          return RowItems(member: numberslist[index],pagecolor: 0xffF99531,);
          
        },
      ),
    );
  }
}
