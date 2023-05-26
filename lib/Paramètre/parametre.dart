import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blucash_agent/Shared/Statique.dart';

import 'package:blucash_agent/Paramètre/profile.dart';

class Parametre extends StatefulWidget {
  const Parametre({super.key});

  @override
  State<Parametre> createState() => _ParametreState();
}

class _ParametreState extends State<Parametre> {
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

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, Orientation, DeviceType) {
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          // toolbarHeight: 100,
          title: Container(
              width: 120,
              child: SvgPicture.asset(
                "assets/blucash.svg",
                color: Colors.white,
              )),
          backgroundColor: darkBlue,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.autorenew,
                  size: 25,
                )),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.account_circle,
                    color: white,
                    size: 30,
                  )),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Paramètres",
                      style: lexendBlue.copyWith(
                        fontSize: Adaptive.sp(23),
                      )),
// Dealing with the tabs
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                                width: 130,
                                height: 40,
                                child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Profile',
                                      style: lexendBlue,
                                    ))),
                            Container(
                              color: darkBlue,
                              height: 2,
                              width: 130,
                            )
                          ],
                        ),
                        Container(
                            width: 130,
                            height: 40,
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Sécurité',
                                  style:
                                      lexendBlue.copyWith(color: Colors.grey),
                                ))),
                      ],
                    ),
                  ),
// Starts here
                  profileTab
// Profile
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
