import 'package:dating_app_template/pages/chat/conversation.dart';
import 'package:dating_app_template/widgets/horizontalLine.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RichText(
              text: TextSpan(
                  text: 'MESSAGES',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                    fontSize: 15,
                  ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 15, bottom: 15),),
            Conversation(
              name: 'Barbara',
              msg: 'Hi ! How are u :)',
              picture: 'assets/barbara.jpg',
              newMessage: true,
            ),
            Padding(padding: EdgeInsets.only(top: 5, bottom: 5),),
            HorizontalLine(width: MediaQuery.of(context).size.width / 1.3),
            Padding(padding: EdgeInsets.only(top: 5, bottom: 5),),
            Conversation(),
            Padding(padding: EdgeInsets.only(top: 5, bottom: 5),),
            HorizontalLine(width: MediaQuery.of(context).size.width / 1.3),
            Padding(padding: EdgeInsets.only(top: 5, bottom: 5),),
            Conversation(
              name: 'Jeanne',
              msg: 'Haha oui bien sur !',
              picture: 'assets/jeanne.jpg',
            ),
            Padding(padding: EdgeInsets.only(top: 5, bottom: 5),),
            HorizontalLine(width: MediaQuery.of(context).size.width / 1.3),
            Padding(padding: EdgeInsets.only(top: 5, bottom: 5),),
            Conversation(
              name: 'Emma',
              msg: 'Is it ok for tonight ?',
              picture: 'assets/emma.png',
            ),
            Padding(padding: EdgeInsets.only(top: 5, bottom: 5),),
            HorizontalLine(width: MediaQuery.of(context).size.width / 1.3),
            Padding(padding: EdgeInsets.only(top: 5, bottom: 5),),
            Conversation(
              name: 'Paul',
              msg: 'Yo frère bien ou quoi ?',
              picture: 'assets/paul.jpg',
            ),
          ],
        ),
      )
    );
  }
}
