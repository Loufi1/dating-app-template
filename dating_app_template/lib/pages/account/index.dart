import 'package:dating_app_template/widgets/avatar.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  int _index = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.75,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.orange[200], Colors.pink[400]]
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Avatar(size: 100,),
                Padding(padding: EdgeInsets.all(10),),
                Text(
                  'Loufi, 20',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15
                  ),
                ),
              ],
            )
          ),
          Padding(padding: EdgeInsets.all(10),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RichText(
                text: TextSpan(
                    text: '17',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                      fontSize: 30,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: ' matches',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange[100],
                            fontSize: 22
                        ),
                      ),
                    ]
                ),
              ),
              RichText(
                text: TextSpan(
                    text: '2K',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                      fontSize: 30,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: ' likes',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange[100],
                            fontSize: 22
                        ),
                      ),
                    ]
                ),
              ),
            ],
          ),
          Stepper(
            steps: [
              Step(title: Text('1k likes !'), content: Text('Félicitation ! vous avez cumulé plus de 1k likes !', style: TextStyle(color: Colors.deepOrange),)),
              Step(title: Text('1er match !'), content: Text('Votre premier match !', style: TextStyle(color: Colors.deepOrange),)),
              Step(title: Text('Création du compte'), content: Text('Hello world !', style: TextStyle(color: Colors.deepOrange),)),
            ],
            controlsBuilder: (BuildContext context, {VoidCallback onStepContinue, VoidCallback onStepCancel}) =>
                Container(),
            currentStep: _index,
            onStepTapped: (step) => this.setState(() {_index = step; }),
          ),
        ],
      )
    );
  }
}
