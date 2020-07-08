import 'package:dating_app_template/pages/swiper/profileCard.dart';
import 'package:dating_app_template/widgets/customRoundedButton.dart';
import 'package:flutter/material.dart';

const double SIZE_RATIO = 1.2;
const double BUTTON_OFFSET = 37;

class Cards {
  var _name;
  var _age;
  var _description;
  var _profilePic;

  Cards(name, age, description, profilePic) {
    _name = name;
    _age = age;
    _description = description;
    _profilePic = profilePic;
  }
}

class Swiper extends StatefulWidget {
  @override
  _SwiperState createState() => _SwiperState();
}

class _SwiperState extends State<Swiper> {
  var cards = [
    Cards('Loufi', '20', 'Croque la vie à pleine dents', 'assets/profile_pic.jpg'),
    Cards('Jeanne', '18', 'L\'ame n\'est que le reflet de l\'étoile', 'assets/jeanne.jpg'),
    Cards('Paul', '19', 'Cherche copine', 'assets/paul.jpg'),
    Cards('Barbara', '28', 'Le soleil ne brule qu\'une seul fois', 'assets/barbara.jpg'),
    Cards('Emma', '24', 'Coucou :)', 'assets/emma.png'),
  ];

  nextProfile() {
    setState(() {
      cards.add(Cards(cards[0]._name, cards[0]._age, cards[0]._description, cards[0]._profilePic));
      cards.removeAt(0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ProfileCard(
            name: cards[0]._name,
            age: cards[0]._age,
            description: cards[0]._description,
            profilePic: cards[0]._profilePic,
          ),
          Padding(padding: EdgeInsets.all(10),),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(bottom: (MediaQuery.of(context).size.height - (MediaQuery.of(context).size.height / SIZE_RATIO)) - BUTTON_OFFSET),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CustomRoundedButton(
                  onTap: () => this.nextProfile(),
                  icon: Icon(Icons.clear, color: Colors.redAccent,),
                ),
                CustomRoundedButton(
                  onTap: () => this.nextProfile(),
                  icon: Icon(Icons.star, color: Colors.blueAccent,),
                ),
                CustomRoundedButton(
                  onTap: () => this.nextProfile(),
                  icon: Icon(Icons.favorite, color: Colors.greenAccent,),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
