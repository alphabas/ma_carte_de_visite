import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import '../portofolio_screen.dart';

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
                ListTile(
                    title: Text(
                  'Accueil',
                  style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 20.0)),
                )),
                ListTile(
                  title: Text(
                    'Portofolio',
                    style:
                        GoogleFonts.lato(textStyle: TextStyle(fontSize: 20.0)),
                  ),
                  onTap: () => {
                    // Navigator.push( context, MaterialPageRoute(builder: (c) => PortofolioScreen()),)
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
