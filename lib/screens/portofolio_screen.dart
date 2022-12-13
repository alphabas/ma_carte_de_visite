// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ma_carte_de_visite/screens/components/drawer_component.dart';

class PortofolioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        drawer: DrawerComponent(),
        body: CarouselSlider(
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 13),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
          ),
          items: <Widget>[
            Image.asset('assets/pic_1.jpg'),
            Image.asset('assets/pic_2.jpg'),
            Image.asset('assets/pic_3.jpg')
          ],
        ));
  }
}
