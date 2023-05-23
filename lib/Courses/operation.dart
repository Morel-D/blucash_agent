import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:blucash_agent/Shared/Statique.dart';

class Operation extends StatefulWidget {
  const Operation({super.key});

  @override
  State<Operation> createState() => _OperationState();
}

class _OperationState extends State<Operation> {
  @override
  Widget build(BuildContext context) {
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

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Opération",
          style: lexendWhite,
        ),
        actions: [
          TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.money,
                color: white,
              ),
              label: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text(
                  'Soldes',
                  style: lexendWhite,
                ),
              )),
        ],
        elevation: 0,
        backgroundColor: darkBlue,
      ),
    );
  }
}
