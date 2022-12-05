import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff052555),
      appBar: AppBar(
        title: Text('En savoir plus'),
        backgroundColor: Colors.transparent,
        elevation: 0.1,
      ),
      body: Center(
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
                height: 20.0,
              ),
              Card(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Passionné depuis mon enfance par l'informatique et les nouvelles technologies, je n'ai cessé d'apprendre, Desormais c'esr a  mon tours de partager les connaissance acquises... ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'joseFinSans',
                        fontSize: 20.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
