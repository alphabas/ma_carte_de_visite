import 'package:flutter/material.dart';
import 'package:ma_carte_de_visite/screens/components/appbar_component.dart';

import 'package:ma_carte_de_visite/ressources/const_globale.dart';
import 'package:ma_carte_de_visite/screens/components/drawer_component.dart';
import 'package:ma_carte_de_visite/screens/details.dart';

class VisitCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.white,
      drawer: DrawerComponent(),
      body: _buildBodyy(context),
    ));
  }

  Widget _buildBodyy(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBarComponent(),
        SliverList(
            delegate: SliverChildListDelegate(<Widget>[
          Card(
            margin: EdgeInsets.only(top: 30.0, bottom: 15.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                descriptionVisiteurInfo,
                textAlign: TextAlign.center,
                style: styleDescriptionVisiteur,
              ),
            ),
            color: Colors.blue[900],
          ),
          Card(
            color: Colors.blue[900],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                detailDescriptionInformation,
                style: styleVisiteurCarte,
              ),
            ),
          ),
          Card(
            color: Colors.blue[900],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                detailDescriptionInformation,
                style: styleVisiteurCarte,
              ),
            ),
          ),
          Card(
            color: Colors.blue[900],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                detailDescriptionInformation,
                style: styleVisiteurCarte,
              ),
            ),
          ),
        ]))
      ],
    );
  }
}
