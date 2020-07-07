import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final String buttonName;
  final Color buttonNameColor;
  final Color backgroundColor;
  final Function onTap;
  final double height;
  final double width;
  final double radius;

  const CustomButton({
    this.buttonName = 'LOGIN',
    this.buttonNameColor = Colors.white,
    this.backgroundColor = Colors.blueGrey,
    this.radius = 50,
    this.height,
    this.width,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        height: this.height,
        width: this.width,
        decoration: BoxDecoration(
          color: this.backgroundColor,
          borderRadius: BorderRadius.circular(this.radius),
        ),
        child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text(
                this.buttonName,
                style: TextStyle(
                  color: this.buttonNameColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            )
        ),
      ),
    );
  }
}