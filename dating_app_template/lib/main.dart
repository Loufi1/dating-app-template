import 'package:dating_app_template/pages/chat/discussion/index.dart';
import 'package:dating_app_template/pages/core/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './pages/login/index.dart';

void main() => runMyApp();

runMyApp () {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dating app',
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/core': (context) => Core(),
        '/discussion': (context) => Discussion(),
      },
    );
  }
}