import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationBadge extends StatelessWidget {

  final value;

  const NotificationBadge({
    this.value = '1',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 15,
        height: 15,
        decoration: BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text(this.value, style: TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),),
        )
    );
  }
}