import "package:flutter/material.dart";
import 'screens/visit_card_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage('assets/alphabas.jpg'), context);
    precacheImage(AssetImage('assets/pic_1.jpg'), context);
    precacheImage(AssetImage('assets/pic_2.jpg'), context);
    precacheImage(AssetImage('assets/pic_3.jpg'), context);

    return MaterialApp(
      title: "Ma carte de visite",
      home: VisitCard(),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return ;
  // }
}
