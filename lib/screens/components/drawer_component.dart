import 'package:flutter/material.dart';

class DrawerComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
              child: Container(
            alignment: Alignment.center,
            child: Text('Alphabas, Entreprenneur'),
          )),
          Expanded(
            child: ListView(
              children: <Widget>[
                Text('Accueil'),
                Text('Portofolio'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
