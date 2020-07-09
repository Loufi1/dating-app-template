import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {

  final String buttonName;
  final double size;
  final picture;

  const Avatar({
    this.buttonName = 'LOGIN',
    this.size = 60,
    this.picture = 'assets/profile_pic.jpg'
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.size,
      height: this.size,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(50),
        image: DecorationImage(
          image: AssetImage(this.picture),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}