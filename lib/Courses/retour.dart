import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:blucash_agent/Shared/Statique.dart';

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

Widget retourTab = Column(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
    Container(
      decoration: BoxDecoration(
          color: darkBlue,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15))),
      height: 100,
      width: Adaptive.sp(360),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instructions relatives aux retours. Pour MTN: 675 15 23 22Pour Orange: 656 00 20 11',
              style: lexendWhite,
            ),
            Text(
              "Il y'a 3 mois",
              style: lexendWhite.copyWith(
                  color: Color.fromARGB(54, 255, 255, 255)),
            )
          ],
        ),
      ),
    ),

    Padding(
      padding: EdgeInsets.only(top: 15),
      child: SizedBox(
        height: 50,
        child: DropdownButtonFormField(
          decoration:
              formTextDecoration.copyWith(hintText: "Sélectionnez l'opérateur"),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>[
            'Orange Money',
            'MTN MOMO',
            'EU Money',
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(fontSize: Adaptive.sp(14)),
              ),
            );
            // );/
          }).toList(),
        ),
      ),
    ),

    Padding(
      padding: const EdgeInsets.only(top: 15),
      child: SizedBox(
          height: 45,
          child: CupertinoTextField(
            placeholder: "Montant",
          )),
    ),

    Padding(
      padding: EdgeInsets.only(top: 15),
      child: SizedBox(
        height: 50,
        child: DropdownButtonFormField(
          decoration: formTextDecoration.copyWith(hintText: "Receveur"),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>[
            'Lyn',
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(fontSize: Adaptive.sp(14)),
              ),
            );
            // );/
          }).toList(),
        ),
      ),
    ),

    Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      child: CupertinoButton(
        onPressed: () {},
        child: Text(
          "Valider",
          style: lexendWhite,
        ),
        color: grey,
      ),
    ),

    Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Divider(),
    ),

    Padding(
      padding: const EdgeInsets.only(left: 12, top: 15, bottom: 15),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Icon(
          Icons.swap_vert,
          color: grey,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 1, left: 2),
          child: Text(
            " Transactions du jour",
            style: lexendGrey.copyWith(
                color: grey, fontSize: 17, fontWeight: FontWeight.bold),
          ),
        )
      ]),
    ),

    // bottom Table
    Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.file_copy_outlined)),
            Text(
              'MONTANT',
              style: lexendBlack.copyWith(
                  fontWeight: FontWeight.bold, fontSize: Adaptive.sp(14)),
            ),
            Text('TYPE',
                style: lexendBlack.copyWith(
                    fontWeight: FontWeight.bold, fontSize: Adaptive.sp(14))),
            Text('STATUT',
                style: lexendBlack.copyWith(
                    fontWeight: FontWeight.bold, fontSize: Adaptive.sp(14))),
            Text('VIA',
                style: lexendBlack.copyWith(
                    fontWeight: FontWeight.bold, fontSize: Adaptive.sp(14))),
            Text('DATE/HEURE',
                style: lexendBlack.copyWith(
                    fontWeight: FontWeight.bold, fontSize: Adaptive.sp(14))),
          ],
        ),
        Divider(),
        Container(
          height: 45,
          child: Center(
            child: Text('Aucune donnée disponible',
                style: lexendBlack.copyWith(fontSize: 16)),
          ),
        ),
        Divider(),
        SizedBox(height: 20),
      ],
    ),
  ],
);

void setState(Null Function() param0) {}
