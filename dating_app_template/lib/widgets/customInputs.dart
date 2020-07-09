import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  final bool isSecret;
  final Color fieldNameColor;
  final Color inputColor;
  final Color backgroundColor;
  final Color hintColor;
  final String hintText;
  final TextEditingController controller;
  final double width;
  final double height;
  final Icon icon;
  final double radius;
  final Color borderColor;
  final Color cursorColor;
  final bool alignCenter;

  CustomInput({
    this.controller,
    this.isSecret = false,
    this.fieldNameColor = Colors.grey,
    this.inputColor = Colors.white,
    this.backgroundColor = Colors.blueGrey,
    this.hintColor =  Colors.white,
    this.borderColor = Colors.white,
    this.cursorColor = Colors.pink,
    this.hintText = 'default@area.com',
    this.icon = const Icon(Icons.account_circle, color: Colors.white),
    this.alignCenter = true,
    this.radius = 50,
    this.height,
    this.width,
  });

  @override
  _CustomInputState createState() => _CustomInputState();
}

//todo: make the hint disappear when focused

class _CustomInputState extends State<CustomInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(widget.radius),
        border: Border.all(width: 2.0, color: widget.borderColor),
      ),
      child: Center(
        child: TextField(
          textAlign: widget.alignCenter ? TextAlign.center : TextAlign.start,
          controller: widget.controller,
          cursorColor: widget.cursorColor,
          obscureText: widget.isSecret ? true : false,
          decoration: InputDecoration(
            prefixIcon: widget.icon,
            suffixIcon: Icon(Icons.done, color: Colors.transparent,),
            border: InputBorder.none,
            hintText: widget.hintText,
            hintStyle: TextStyle(color: widget.hintColor),
          ),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: widget.inputColor,
          ),
        ),
      )
    );
  }
}