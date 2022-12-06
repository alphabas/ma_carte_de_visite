import 'package:flutter/material.dart';

import 'package:ma_carte_de_visite/screens/details.dart';
import 'package:ma_carte_de_visite/ressources/const_globale.dart';

class VisitCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Color(backgroundColor),
      appBar: AppBar(
        title: Text(
          "Ma carte de visites",
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.1,
      ),
      body: _buildBody(context),
    ));
  }

  Widget _buildBody(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 70.0,
            backgroundImage: AssetImage('assets/alphabas.jpg'),
          ),
          SizedBox(
            height: 10.0,
          ),
          Card(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                nomVisiteurCarte,
                style: styleVisiteurCarte,
              ),
            ),
          ),
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
            color: Colors.transparent,
          ),
          ElevatedButton(
            onPressed: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return Details();
              }))
            },
            child: Text(
              'En Savoir Plus',
              style:
                  TextStyle(fontFamily: "joseFinSans", color: Colors.white70),
            ),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueGrey)),
          )
        ],
      ),
    ));
  }
}
