import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {

  final Function onTap;
  final Icon icon;

  const CustomRoundedButton({
    this.icon = const Icon(Icons.favorite),
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
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
          child: this.icon,
        ),
      ),
    );
  }
}