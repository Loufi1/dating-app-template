import 'package:flutter/material.dart';

const double SIZE_RATIO = 1.2;
const double BUTTON_OFFSET = 37;

class Swiper extends StatefulWidget {
  @override
  _SwiperState createState() => _SwiperState();
}

class _SwiperState extends State<Swiper> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / SIZE_RATIO,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              image: DecorationImage(
                image: AssetImage('assets/profile_pic.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(bottom: 70, left: 20),
                child: RichText(
                  text: TextSpan(
                    text: 'Loufi, 20',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: '\nCroque la vie à pleine dents',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 12
                        ),
                      ),
                    ]
                  ),
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(10),),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(bottom: (MediaQuery.of(context).size.height - (MediaQuery.of(context).size.height / SIZE_RATIO)) - BUTTON_OFFSET),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200].withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: Icon(Icons.clear, color: Colors.redAccent,),
                  ),
                ),
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200].withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: Icon(Icons.star, color: Colors.blueAccent,),
                  ),
                ),
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200].withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: Icon(Icons.favorite, color: Colors.greenAccent,),
                  ),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
