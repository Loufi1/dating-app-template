import 'package:dating_app_template/widgets/customButton.dart';
import 'package:dating_app_template/widgets/customInputs.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.blue[800], Colors.pink[300]]
              ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CustomInput(
                  hintText: 'Username',
                  hintColor: Colors.white,
                  backgroundColor: Colors.pink[200],
                  width: MediaQuery.of(context).size.width / 1.25,
                  height: MediaQuery.of(context).size.height / 12,
                  icon:  Icon(Icons.account_box, color: Colors.white),
                ),
                Padding(padding: EdgeInsets.all(10),),
                CustomInput(
                  hintText: 'Password',
                  hintColor: Colors.white,
                  backgroundColor: Colors.pink[200],
                  width: MediaQuery.of(context).size.width / 1.25,
                  height: MediaQuery.of(context).size.height / 12,
                  icon:  Icon(Icons.lock_open, color: Colors.white),
                ),
                Padding(padding: EdgeInsets.all(10),),
                CustomButton(
                  backgroundColor: Colors.white,
                  buttonNameColor: Colors.pink[300],
                  width: MediaQuery.of(context).size.width / 1.25,
                  height: MediaQuery.of(context).size.height / 14,
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}
