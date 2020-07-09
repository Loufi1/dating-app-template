import 'package:flutter/material.dart';

class Message extends StatelessWidget {

  final bool send;
  final msg;
  final hour;

  const Message({
    this.send = true,
    this.msg = 'hello world !',
    this.hour = '17:00',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: this.send ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: <Widget>[
          Card(
            color: this.send ? Colors.deepOrange[300] : Colors.grey,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(this.msg, style: TextStyle(color: Colors.white),),
                  Padding(padding: EdgeInsets.only(top: 10),),
                  Text(this.hour, style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}