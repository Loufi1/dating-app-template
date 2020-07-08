import 'package:flutter/material.dart';

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
          Center(
            child: Text('Swiper'),
          )
        ],
      ),
    );
  }
}
