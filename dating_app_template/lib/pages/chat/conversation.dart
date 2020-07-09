import 'package:dating_app_template/widgets/avatar.dart';
import 'package:dating_app_template/widgets/notificationBadge.dart';
import 'package:flutter/material.dart';

class Conversation extends StatelessWidget {

  final name;
  final msg;
  final picture;
  final bool newMessage;

  const Conversation({
    this.name = 'Loufi',
    this.msg = 'Hello world !',
    this.picture = 'assets/profile_pic.jpg',
    this.newMessage = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Avatar(picture: this.picture),
        Padding(padding: EdgeInsets.only(left: 15),),
        RichText(
          text: TextSpan(
              text: this.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontSize: 20,
              ),
              children: <TextSpan>[
                TextSpan(text: '\n ' + this.msg,
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 12
                  ),
                ),
              ]
          ),
        ),
        Spacer(),
        if (this.newMessage) Padding(
          padding: EdgeInsets.only(right: 20, bottom: 5),
          child: NotificationBadge(),
        ),
      ],
    );
  }
}