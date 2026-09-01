import 'package:flutter/material.dart';
import 'package:toku_app/class.dart';
import 'package:toku_app/row_items_family.dart';

class Phrases extends StatelessWidget {
  final List<Member> phrasesList = [
    Member(
      image: null,
      jpname: "Kimasu ka?",
      enname: "Are you coming?",
      sound: "sounds/phrases/are_you_coming.wav",
    ),
    Member(
      image: null,
      jpname: "Kōdoku o wasurenaide kudasai",
      enname: "Don't forget to subscribe",
      sound: "sounds/phrases/dont_forget_to_subscribe.wav",
    ),
    Member(
      image: null,
      jpname: "Go kibun wa ikagadesu ka.",
      enname: "How are you feeling?",
      sound: "sounds/phrases/how_are_you_feeling.wav",
    ),
    Member(
      image: null,
      jpname: "Watashi wa anime ga daisukidesu",
      enname: "I love anime",
      sound: "sounds/phrases/i_love_anime.wav",
    ),
    Member(
      image: null,
      jpname: "Puroguramingu ga daisukidesu",
      enname: "I love programming",
      sound: "sounds/phrases/i_love_programming.wav",
    ),
    Member(
      image: null,
      jpname: "Puroguramingu wa kantandesu",
      enname: "Programming is easy",
      sound: "sounds/phrases/programming_is_easy.wav",
    ),
    Member(
      image: null,
      jpname: "Namae wa nandesu ka",
      enname: "What is your name?",
      sound: "sounds/phrases/what_is_your_name.wav",
    ),
    Member(
      image: null,
      jpname: "Doko ni iku no",
      enname: "Where are you going?",
      sound: "sounds/phrases/where_are_you_going.wav",
    ),
    Member(
      image: null,
      jpname: "Hai, ikimasu",
      enname: "Yes I'm coming",
      sound: "sounds/phrases/yes_im_coming.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF4D9),
      appBar: AppBar(
        title: Text("phrases", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) {
          return PhrasesItem(member: phrasesList[index], pagecolor: 0xff50ADC7);
        },
      ),
    );
  }
}

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({required this.member, required this.pagecolor});
  final Member member;
  final int pagecolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(pagecolor),
      child: Row(children: [Iteminfo(member)]),
    );
  }
}
