import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:blucash_agent/Shared/Statique.dart';

import '../Courses/retour.dart';

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

var dropdownValue = "0";

Widget securityTab = Column(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
    SizedBox(height: 15),
    Text("Sécurité",
        style: lexendBlack.copyWith(
            color: Colors.grey, fontWeight: FontWeight.bold)),

// first row name & phone number
//
    Padding(
      padding: EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
              width: Adaptive.w(43.5),
              height: 45,
              child: CupertinoTextField(
                placeholder: "PIN",
              )),
          SizedBox(width: 12),
          SizedBox(
              width: Adaptive.w(43.5),
              height: 45,
              child: CupertinoTextField(
                placeholder: "Nouveau PIN",
              )),
        ],
      ),
    ),

    Padding(
      padding: EdgeInsets.only(top: 15),
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: CupertinoButton(
          child: Text(
            "Enregistrer",
            style: lexendWhite,
          ),
          onPressed: () {},
          color: grey,
        ),
      ),
    ),

    Padding(padding: EdgeInsets.symmetric(vertical: 15), child: Divider()),
    Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Text(
        "Dernières historiques de connexions",
        style: lexendBlack.copyWith(
            color: Colors.grey, fontWeight: FontWeight.bold),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        "APPAREIL",
        style: lexendBlack.copyWith(
            color: grey,
            fontWeight: FontWeight.bold,
            fontSize: Adaptive.sp(19)),
      ),
    ),

    Column(
      children: [
        Divider(),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.laptop, color: grey),
                        Text(" Windows 10, ",
                            style: lexendGrey.copyWith(
                                fontWeight: FontWeight.bold)),
                        Text(
                          " Firefox",
                          style: lexendGrey,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: grey),
                        Text(
                          " 154.72.150.33",
                          style: lexendGrey,
                        )
                      ],
                    ),
                  ],
                ),
                Text("26 mai 2023", style: lexendGrey)
              ],
            )),
      ],
    ),

    Column(
      children: [
        Divider(),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.phone_android, color: grey),
                        Text(" Android, ",
                            style: lexendGrey.copyWith(
                                fontWeight: FontWeight.bold)),
                        Text(
                          " Chrome",
                          style: lexendGrey,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: grey),
                        Text(
                          " 154.72.167.45",
                          style: lexendGrey,
                        )
                      ],
                    ),
                  ],
                ),
                Text("25 mai 2023", style: lexendGrey)
              ],
            )),
        Divider(),
      ],
    ),

    Padding(
      padding: EdgeInsets.only(top: 15),
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: CupertinoButton(
          child: Text(
            "Déconnexion",
            style: lexendWhite,
          ),
          onPressed: () {},
          color: Colors.redAccent,
        ),
      ),
    ),

    Center(
      child: Padding(
        padding: EdgeInsets.only(top: 25),
        child: Text(
          "Blucash — v2.00",
          style: lexendGrey.copyWith(
              fontWeight: FontWeight.bold, color: Colors.grey),
        ),
      ),
    )
  ],
);
