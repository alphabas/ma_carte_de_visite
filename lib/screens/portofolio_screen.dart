// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_multi_carousel/carousel.dart';
import 'package:ma_carte_de_visite/screens/components/drawer_component.dart';

class PortofolioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: DrawerComponent(),
      body: Carousel(
        height: 500.0,
        width: 500.0,
        type: Types.slideSwiper,
        children: <Widget>[
          Image.asset('assets/pic_1.jpg'),
          Image.asset('assets/pic_2.jpg'),
          Image.asset('assets/pic_3.jpg')
        ],
        initialPage: 0,
        axis: Axis.horizontal,
        onCarouselTap: (i) {},
        arrowColor: Colors.black,
        showArrow: true,
        indicatorType: IndicatorTypes.bar,
      ),
    );
  }
}
