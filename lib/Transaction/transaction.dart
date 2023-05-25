import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:blucash_agent/Transaction/courses.dart';
import 'package:blucash_agent/Transaction/administration.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
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

  TextEditingController _timeRange = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _timeRange.text = "05/17/2023 - 05/17/2023";

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
                  Text("Transactions",
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
                                      'Courses',
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
                                  'Administartion',
                                  style: lexendBlue,
                                ))),
                      ],
                    ),
                  ),

                  // coursesTab
                  administartionTab
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
