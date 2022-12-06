import 'package:flutter/material.dart';
import 'package:ma_carte_de_visite/ressources/const_globale.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(backgroundColor),
      appBar: AppBar(
        title: Text('En savoir plus'),
        backgroundColor: Colors.transparent,
        elevation: 0.1,
      ),
      body: _buildBodyDetail(context),
    );
  }

  Widget _buildBodyDetail(BuildContext context) {
    return Center(
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 70.0,
              backgroundImage: AssetImage('assets/alphabas.jpg'),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Card(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                detailDescriptionInformation,
                textAlign: TextAlign.center,
                style: styleDetailDescriptionInfo,
              ),
            ),
          ),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.mail,
                color: Colors.white,
                size: 35.0,
              ),
              SizedBox(width: 15.0),
              Text(
                emailUser,
                style: styleEmailUser,
              )
            ],
          )
        ],
      ),
    );
  }
}
