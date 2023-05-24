import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:blucash_agent/Shared/Statique.dart';
import 'package:blucash_agent/Courses/collect.dart';
import 'package:blucash_agent/Courses/retour.dart';

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

    List<String> tabs = ["Collect", "Retour"];
    int current = 0;
    var dropdownValue = "0";

    return ResponsiveSizer(builder: (context, Orientation, DeviceType) {
      return Scaffold(
          appBar: AppBar(
            title: Text(
              "Opération",
              style: lexendWhite,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.autorenew,
                      color: Colors.white,
                    )),
              )
              // TextButton.icon(
              //     onPressed: () {},
              //     icon: Icon(
              //       Icons.money,
              //       color: white,
              //     ),
              //     label: Padding(
              //       padding: const EdgeInsets.only(right: 15),
              //       child: Text(
              //         'Soldes',
              //         style: lexendWhite,
              //       ),
              //     )),
            ],
            elevation: 0,
            backgroundColor: darkBlue,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, top: 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
// user porfile
                  Row(
                    children: [
                      CircleAvatar(
                        radius: Adaptive.sp(25),
                        backgroundImage: AssetImage("assets/user1.jpg"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sandrine ADAMA",
                              style: lexendBlue.copyWith(
                                  fontSize: Adaptive.sp(17),
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_city,
                                  color: Colors.grey,
                                ),
                                Text(
                                  " Marché Essos, Yaoundé, en \n face de  Titi Market",
                                  style: lexendWhite.copyWith(
                                      fontSize: Adaptive.sp(15),
                                      color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Divider(),
                  SizedBox(height: 15),
// tabs
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Center(
                      child: Text(
                        "Collect",
                        style: lexendBlack.copyWith(fontSize: Adaptive.sp(18)),
                      ),
                    ),
                  ),

                  /// Starts here
                  retourTab

                  /// ends here
                ],
              ),
            ),
          ));
    });
  }
}
