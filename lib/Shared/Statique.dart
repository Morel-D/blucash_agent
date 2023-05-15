import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

// Color code
Color darkBlue = Color(0xFF113b7f);
Color lightRed = Color(0xFFCE2835);
Color lightBlue = Color(0xFF49BAEB);
Color darkPink = Color(0xFF41A6C);
Color grey = Color(0xFF212529);
Color white = Colors.white;

// font familly

var lexendWhite = GoogleFonts.lexend(color: Colors.white);
var lexendBlack = GoogleFonts.lexend(color: Colors.black);
var lexendBlue = GoogleFonts.lexend(color: Color(0xFF113b7f));
var lexendGrey = GoogleFonts.lexend(color: Color(0xFF212529));

// Navbar de la page d'acceuei

Widget drawBar = Drawer(
    width: 240,
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            color: darkBlue,
            height: Adaptive.h(30),
            child: Center(
                child: (Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_circle,
                  color: white,
                  size: Adaptive.px(90),
                ),
                Text(
                  "Utilisateur lamda",
                  style: lexendWhite.copyWith(fontSize: Adaptive.px(15)),
                )
              ],
            ))),
          ),
          SizedBox(height: Adaptive.h(2)),
          ListTile(
            leading: Icon(
              Icons.account_balance_rounded,
            ),
            title: Text(
              'Dépôt',
              style: lexendGrey,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
            ),
            title: Text(
              'Paramètres',
              style: lexendGrey.copyWith(fontSize: Adaptive.px(13)),
            ),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.arrow_back,
            ),
            title: Text(
              'Déconnexion',
              style: lexendGrey.copyWith(fontSize: Adaptive.px(13)),
            ),
            onTap: () {},
          ),
        ],
      ),
    ));

// Text input field

const formTextDecoration = InputDecoration(
  fillColor: Colors.transparent,
  filled: true,
  hoverColor: Colors.transparent,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 185, 185, 185)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlue),
  ),
);
