import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {

  final Function onTap;
  final Icon icon;
  final double size;

  const CustomRoundedButton({
    this.icon = const Icon(Icons.favorite),
    this.size = 75,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        width: this.size,
        height: this.size,
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
          child: this.icon,
        ),
      ),
    );
  }
}