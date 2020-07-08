import 'package:dating_app_template/pages/account/index.dart';
import 'package:dating_app_template/pages/chat/index.dart';
import 'package:dating_app_template/pages/swiper/index.dart';
import 'package:flutter/material.dart';

class Core extends StatefulWidget {
  @override
  _CoreState createState() => _CoreState();
}

class _CoreState extends State<Core> {
  PageController pageController;
  int selectedPage;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 1);
    selectedPage = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: pageController,
            children: <Widget>[
              Account(),
              Swiper(),
              Chat(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.account_box),
                  color: selectedPage == 0 ? Colors.deepOrange : Colors.grey,
                  onPressed: () {
                    pageController.jumpToPage(0);
                    setState(() {
                      selectedPage = 0;
                    });
                  },
                ),
                IconButton(
                  icon: Icon(Icons.favorite),
                  color: selectedPage == 1 ? Colors.deepOrange : Colors.grey,
                  onPressed: () {
                    pageController.jumpToPage(1);
                    setState(() {
                      selectedPage = 1;
                    });
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.message,
                  ),
                  color: selectedPage == 2 ? Colors.deepOrange : Colors.grey,
                  onPressed: () {
                    pageController.jumpToPage(2);
                    setState(() {
                      selectedPage = 2;
                    });
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
