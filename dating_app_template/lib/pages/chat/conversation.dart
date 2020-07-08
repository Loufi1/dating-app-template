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
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(50),
            image: DecorationImage(
              image: AssetImage(this.picture),
              fit: BoxFit.cover,
            ),
          ),
        ),
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
          padding: EdgeInsets.only(right: 60, bottom: 5),
          child: NotificationBadge(),
        ),
      ],
    );
  }
}