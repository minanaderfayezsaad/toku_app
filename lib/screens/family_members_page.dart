import 'package:flutter/material.dart';
import 'package:toku_app/row_items_family.dart';
import 'package:toku_app/class.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class FamilyMembersPage extends StatelessWidget {
  final List<Member> familymemberslist = [
    Member(
      image: "assets/images/family_members/family_daughter.png",
      jpname: "Musume",
      enname: "daughter",
      sound: "sounds/family_members/daughter.wav",
    ),
    Member(
      image: "assets/images/family_members/family_father.png",
      jpname: "Chichioya",
      enname: "father",
      sound: "sounds/family_members/father.wav",
    ),
    Member(
      image: "assets/images/family_members/family_grandfather.png",
      jpname: "Sofu",
      enname: "grand father",
      sound: "sounds/family_members/grand father.wav",
    ),
    Member(
      image: "assets/images/family_members/family_grandmother.png",
      jpname: "Sobo",
      enname: "grand mother",
      sound: "sounds/family_members/grand mother.wav",
    ),
    Member(
      image: "assets/images/family_members/family_mother.png",
      jpname: "Hahaoya",
      enname: "mother",
      sound: "sounds/family_members/mother.wav",
    ),
    Member(
      image: "assets/images/family_members/family_older_brother.png",
      jpname: "Nisan",
      enname: "older brother",
      sound: "sounds/family_members/older bother.wav",
    ),
    Member(
      image: "assets/images/family_members/family_older_sister.png",
      jpname: "Ane",
      enname: "older sister",
      sound: "sounds/family_members/older sister.wav",
    ),
    Member(
      image: "assets/images/family_members/family_son.png",
      jpname: "Musuko",
      enname: "son",
      sound: "sounds/family_members/son.wav",
    ),
    Member(
      image: "assets/images/family_members/family_younger_brother.png",
      jpname: "Otouto",
      enname: "younger brother",
      sound: "sounds/family_members/younger brohter.wav",
    ),
    Member(
      image: "assets/images/family_members/family_younger_sister.png",
      jpname: "Imouto",
      enname: "younger sister",
      sound: "sounds/family_members/younger sister.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF4D9),
      appBar: AppBar(
        title: Text("FamilyMembers", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        //loop to build FamilyMember objects
        itemCount: familymemberslist.length,
        itemBuilder: (context, index) {
          return RowItems(member: familymemberslist[index],pagecolor: 0xff528032,);
        },
      ),
    );
  }
}
