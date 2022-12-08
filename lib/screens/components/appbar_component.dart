import 'package:flutter/material.dart';
import 'package:ma_carte_de_visite/ressources/const_globale.dart';
import 'package:google_fonts/google_fonts.dart';

class SliverAppBarComponent extends StatelessWidget {
  const SliverAppBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      backgroundColor: Color(backgroundColor),
      expandedHeight: 200.0,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          child: Stack(children: <Widget>[
            Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.centerRight,
                child: Text(
                  'Alphabas, Entreprenneur',
                  style: GoogleFonts.rubik(color: Colors.white, fontSize: 17.0),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Image.asset('assets/alphabas.jpg'),
            )
          ]),
        ),
      ),
    );
  }
}
