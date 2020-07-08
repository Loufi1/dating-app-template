import 'package:flutter/material.dart';

const double SIZE_RATIO = 1.2;

class ProfileCard extends StatelessWidget {
  final name;
  final age;
  final description;
  final profilePic;

  ProfileCard({
    this.name = 'Loufi',
    this.age = '20',
    this.description = '1 + 1 = 2 mais toi + moi ça fait 1',
    this.profilePic = 'assets/profile_pic.jpg',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / SIZE_RATIO,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
        image: DecorationImage(
          image: AssetImage(this.profilePic),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: EdgeInsets.only(bottom: 70, left: 20),
          child: RichText(
            text: TextSpan(
                text: this.name + ', ' + this.age,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25,
                ),
                children: <TextSpan>[
                  TextSpan(text: '\n' + this.description,
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
    );
  }
}
