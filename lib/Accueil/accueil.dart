import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    // Color code
    Color darkBlue = Color(0xFF113b7f);
    Color lightRed = Color(0xFFCE2835);
    Color lightBlue = Color(0xFF49BAEB);
    Color darkPink = Color(0xFF41A6C);
    Color grey = Color(0xFF212529);

    // font familly

    var lexend = GoogleFonts.lexend();

    return Scaffold(
      appBar: AppBar(
        title: Container(child: Image(image: AssetImage("assets/logo.png"))),
        backgroundColor: darkBlue,
        elevation: 0,
      ),
    );
  }
}
