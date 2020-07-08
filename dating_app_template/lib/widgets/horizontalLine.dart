import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalLine extends StatelessWidget {

  final double width;

  const HorizontalLine({
    this.width = 130.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: 1.0,
        width: this.width,
        color: Colors.grey[300],
      ),
    );
  }
}