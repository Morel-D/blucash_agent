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

Widget administartionTab = Column(
  children: [
    // Dealing textfeild calendar
    Padding(
      padding: EdgeInsets.only(top: 17),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Filtrer par date",
            style: lexendGrey.copyWith(fontSize: 12, color: Colors.grey),
          ),
          SizedBox(height: 3),
          CupertinoTextField(
            // controller: _timeRange,
            readOnly: true,
            suffix: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.calendar_month,
                  color: Colors.grey,
                )),
          )
        ],
      ),
    ),

// Table Recodrs
    Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'MONTANT',
                style: lexendBlack.copyWith(
                    fontWeight: FontWeight.bold, fontSize: Adaptive.sp(15)),
              ),
              Text('TYPE',
                  style: lexendBlack.copyWith(
                      fontWeight: FontWeight.bold, fontSize: Adaptive.sp(15))),
              Text('PAR',
                  style: lexendBlack.copyWith(
                      fontWeight: FontWeight.bold, fontSize: Adaptive.sp(15))),
              Text('DATE/HEURE',
                  style: lexendBlack.copyWith(
                      fontWeight: FontWeight.bold, fontSize: Adaptive.sp(15))),
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
        ],
      ),
    ),
  ],
);
