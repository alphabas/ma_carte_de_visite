import 'package:flutter/material.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      floatingActionButton: FabCircularMenu(
          fabOpenIcon: Icon(
            FontAwesomeIcons.handshake,
            color: Colors.blue[600],
            size: 32.0,
          ),
          fabColor: Colors.white,
          ringDiameter: 210.0,
          ringWidth: 56.0,
          ringColor: Colors.white,
          fabOpenColor: Colors.white,
          fabMargin: EdgeInsets.all(35.0),
          children: <Widget>[
            IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.web,
                color: Colors.blue[600],
              ),
            ),
            IconButton(
              onPressed: () => {},
              icon: Icon(
                FontAwesomeIcons.envelope,
                color: Colors.blue[600],
              ),
            ),
            IconButton(
              onPressed: () => {},
              icon: Icon(
                FontAwesomeIcons.linkedinIn,
                color: Colors.blue[600],
              ),
            ),
          ]),
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
