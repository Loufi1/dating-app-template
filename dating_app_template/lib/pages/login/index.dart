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
                  colors: [Colors.orange[200], Colors.pink[400]]
              ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                Image.asset('./assets/logo.png', width: 250,),
                Spacer(),
                CustomInput(
                  hintText: 'Username',
                  hintColor: Colors.white,
                  backgroundColor: Colors.deepOrange[200],
                  width: MediaQuery.of(context).size.width / 1.25,
                  height: MediaQuery.of(context).size.height / 12,
                  icon:  Icon(Icons.account_box, color: Colors.white),
                ),
                Padding(padding: EdgeInsets.all(10),),
                CustomInput(
                  hintText: 'Password',
                  hintColor: Colors.white,
                  backgroundColor: Colors.deepOrange[200],
                  width: MediaQuery.of(context).size.width / 1.25,
                  height: MediaQuery.of(context).size.height / 12,
                  icon:  Icon(Icons.lock_open, color: Colors.white),
                  isSecret: true,
                ),
                Padding(padding: EdgeInsets.all(10),),
                CustomButton(
                  backgroundColor: Colors.white,
                  buttonNameColor: Colors.pink[300],
                  width: MediaQuery.of(context).size.width / 1.25,
                  height: MediaQuery.of(context).size.height / 14,
                  onTap: () => Navigator.pushNamed(context, '/core'),
                ),
                Padding(padding: EdgeInsets.all(10),),
                RichText(
                  text: TextSpan(
                      text: 'Don\'t have an account ?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 12,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: ' Sign Up Now',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrange[100],
                              fontSize: 12
                          ),
                        ),
                      ]
                  ),
                ),
                Spacer(),
                RichText(
                  text: TextSpan(
                      text: 'Forgot password ?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 15,
                      ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10),),
              ],
            ),
          )
        ),
      ),
    );
  }
}
