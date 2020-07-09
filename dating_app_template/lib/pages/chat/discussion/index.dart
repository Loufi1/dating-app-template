import 'package:dating_app_template/pages/chat/discussion/message.dart';
import 'package:dating_app_template/widgets/avatar.dart';
import 'package:dating_app_template/widgets/customInputs.dart';
import 'package:dating_app_template/widgets/customRoundedButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const double INPUT_SIZE = 55;

class Discussion extends StatefulWidget {
  @override
  _DiscussionState createState() => _DiscussionState();
}

class _DiscussionState extends State<Discussion> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          children: <Widget>[
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(Icons.arrow_back, color: Colors.deepOrange,),
            ),
            Padding(padding: EdgeInsets.only(left: 5),),
            Avatar(size: 40, picture: 'assets/barbara.jpg',),
            Padding(padding: EdgeInsets.only(left: 10),),
            Text(
              'Barbara',
              style: TextStyle(
                  color: Colors.deepOrange
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height - INPUT_SIZE,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      Message(
                        send: false,
                        msg: 'Hi ! How are u :)',
                      ),
                      Message(
                        send: true,
                      ),
                      Message(
                        send: true,
                      ),
                      Message(
                          send: false,
                          msg: 'Hum... OK !'
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CustomInput(
                    width: MediaQuery.of(context).size.width / 1.3,
                    backgroundColor: Colors.deepOrange[300],
                    borderColor: Colors.deepOrange[300],
                    cursorColor: Colors.white,
                    height: INPUT_SIZE,
                    hintText: '',
                    radius: 50,
                    alignCenter: false,
                    icon: Icon(Icons.insert_emoticon, color: Colors.white,),
                  ),
                  CustomRoundedButton(
                    size: 55,
                    icon: Icon(Icons.send, color: Colors.deepOrange,),
                  ),
                ],
              )
            )
          )
        ],
      ),
    );
  }
}
