import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:toku_app/class.dart';

//import 'package:toku_app/screens/family_members_page.dart';
class RowItems extends StatelessWidget {
  final Member member;
  final int pagecolor;

  // ignore: use_key_in_widget_constructors
  const RowItems({required this.member, required this.pagecolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(pagecolor),
      child: Row(
        children: [
          Container(
            color: Color(0xffFFF6DC),
            child: Image.asset(member.image!),
          ),
          Iteminfo(member),
        ],
      ),
    );
  }
}

class Iteminfo extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Iteminfo(this.member);
  final Member member;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                member.jpname!,
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              Text(
                member.enname!,
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(member.sound!));
            },
            icon: Icon(Icons.play_arrow, color: Colors.white, size: 30),
          ),
        ],
      ),
    );
  }
}
