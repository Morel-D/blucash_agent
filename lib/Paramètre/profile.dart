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

Widget profileTab = Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    SizedBox(height: 15),
    Text("Identification",
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
                placeholder: "Nom",
              )),
          SizedBox(width: 12),
          SizedBox(
              width: Adaptive.w(43.5),
              height: 45,
              child: CupertinoTextField(
                placeholder: "Téléphone",
              )),
        ],
      ),
    ),

    Padding(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
              height: 45,
              child: CupertinoTextField(
                placeholder: "Email",
              )),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: SizedBox(
                height: 45,
                child: CupertinoTextField(
                  placeholder: "Adresse",
                )),
          ),
        ],
      ),
    ),
// gender dropdown box
    Padding(
      padding: EdgeInsets.only(top: 15),
      child: SizedBox(
        height: 50,
        child: DropdownButtonFormField(
          decoration: formTextDecoration.copyWith(hintText: "Sexe"),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>['Homme', 'Femme']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
              ),
            );
            // );/
          }).toList(),
        ),
      ),
    ),

    Padding(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Piece d'identité (PDF, Image)",
              style: lexendBlack.copyWith(fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          CupertinoTextField(
            placeholder: "Choisir un fichier",
            suffix: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.file_upload,
                  color: Colors.grey,
                )),
          ),
          Padding(
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
      ),
    ),

// email
  ],
);
