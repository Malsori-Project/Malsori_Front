import 'package:flutter/material.dart';
import './theme.dart';
import './pages/lcd1.dart';
import './pages/lcd2.dart';
import './pages/tts1.dart';
import './pages/tts2.dart';
import './pages/tts3.dart';
import './pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      routes: <String, WidgetBuilder>{
        '/lcd1': (BuildContext context) => Lcd1(),
        '/lcd2': (BuildContext context) => Lcd2(),
        '/tts1': (BuildContext context) => Tts1(),
        '/tts2': (BuildContext context) => Tts2(),
        '/tts3': (BuildContext context) => Tts3(),
        '/home':(BuildContext context) => Home(),
      },
    );
  }
}
