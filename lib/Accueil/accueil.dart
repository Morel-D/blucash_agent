import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:blucash_agent/Shared/Statique.dart';

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
    Color white = Colors.white;

    // font familly

    var lexendWhite = GoogleFonts.lexend(color: Colors.white);
    var lexendBlack = GoogleFonts.lexend(color: Colors.black);
    var lexendBlue = GoogleFonts.lexend(color: Color(0xFF113b7f));
    var lexendGrey = GoogleFonts.lexend(color: Color(0xFF212529));

    return ResponsiveSizer(builder: (context, Orientation, DeviceType) {
      return Scaffold(
          drawer: drawBar,
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: darkBlue,
            child: Icon(Icons.qr_code_2),
          ),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            // toolbarHeight: 100,
            title:
                Container(child: Image(image: AssetImage("assets/logo.png"))),
            backgroundColor: darkBlue,
            elevation: 0,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.print,
                    color: white,
                  )),
              Builder(builder: (context) {
                return IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: Icon(
                      Icons.account_circle,
                      color: white,
                      size: 35,
                    ));
              }),
            ],
          ),
          body: Stack(children: [
            Container(
              color: darkBlue,
              height: 200,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                    child: Column(
                  children: [
                    Text(
                      "Mon Solde",
                      style: lexendWhite.copyWith(
                        fontSize: Adaptive.px(19),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "0",
                          style: lexendWhite.copyWith(
                            fontSize: Adaptive.px(65),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text(
                            " FCFA",
                            style: lexendWhite.copyWith(
                              fontSize: Adaptive.px(19),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 33,
                      width: 115,
                      child: TextButton(
                        onPressed: () async {},
                        child: Text(
                          "Movement",
                          style: lexendWhite,
                        ),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            side: BorderSide(width: 1.0, color: white)),
                      ),
                    ),
                  ],
                )),
              ],
            ),
            Positioned(
              top: 170,
              left: Adaptive.w(13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // First row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: Adaptive.h(15),
                          width: Adaptive.w(32),
                          child: TextButton(
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(6),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.directions_bike,
                                    size: Adaptive.h(5),
                                    color: darkBlue,
                                  ),
                                  Text(
                                    "Mes Courses",
                                    style: lexendBlack.copyWith(
                                        fontSize: Adaptive.h(1.5)),
                                  ),
                                  Text("0",
                                      style: lexendBlack.copyWith(
                                          fontSize: Adaptive.h(3)))
                                ],
                              ),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: white,
                                shadowColor: Color.fromARGB(103, 105, 105, 105),
                                elevation: 3),
                          )),
                      SizedBox(width: 30),
                      SizedBox(
                          height: Adaptive.h(15),
                          width: Adaptive.w(32),
                          child: TextButton(
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.scale_outlined,
                                    size: Adaptive.h(5),
                                    color: darkBlue,
                                  ),
                                  Text(
                                    "En Validation",
                                    style: lexendBlack.copyWith(
                                        fontSize: Adaptive.h(1.5)),
                                  ),
                                  Text("0",
                                      style: lexendBlack.copyWith(
                                          fontSize: Adaptive.h(3)))
                                ],
                              ),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: white,
                                shadowColor: Color.fromARGB(103, 105, 105, 105),
                                elevation: 3),
                          )),
                    ],
                  ),
                  SizedBox(height: 15),

                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Icon(
                      Icons.schedule_rounded,
                      color: grey,
                    ),
                    Text(
                      " Aujourd’hui",
                      style: lexendGrey,
                    )
                  ]),

                  SizedBox(height: 15),

                  // second row

                  Row(
                    children: [
                      SizedBox(
                          height: Adaptive.h(15),
                          width: Adaptive.w(32),
                          child: TextButton(
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.swap_vert,
                                    size: Adaptive.h(5),
                                    color: darkBlue,
                                  ),
                                  Text(
                                    "Transaction",
                                    style: lexendBlack.copyWith(
                                        fontSize: Adaptive.h(1.5)),
                                  ),
                                  Text("0",
                                      style: lexendBlack.copyWith(
                                          fontSize: Adaptive.h(3)))
                                ],
                              ),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: white,
                                shadowColor: Color.fromARGB(103, 105, 105, 105),
                                elevation: 3),
                          )),
                      SizedBox(width: 30),
                      SizedBox(
                          height: Adaptive.h(15),
                          width: Adaptive.w(32),
                          child: TextButton(
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.arrow_circle_down,
                                    size: Adaptive.h(5),
                                    color: darkBlue,
                                  ),
                                  Text(
                                    "Collect",
                                    style: lexendBlack.copyWith(
                                        fontSize: Adaptive.h(1.5)),
                                  ),
                                  Text("0",
                                      style: lexendBlack.copyWith(
                                          fontSize: Adaptive.h(3)))
                                ],
                              ),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: white,
                                shadowColor: Color.fromARGB(103, 105, 105, 105),
                                elevation: 3),
                          )),
                    ],
                  ),

                  SizedBox(height: 30),

                  Row(
                    children: [
                      SizedBox(
                          height: Adaptive.h(15),
                          width: Adaptive.w(32),
                          child: TextButton(
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.arrow_circle_right_outlined,
                                    size: Adaptive.h(5),
                                    color: darkBlue,
                                  ),
                                  Text(
                                    "Retour",
                                    style: lexendBlack.copyWith(
                                        fontSize: Adaptive.h(1.5)),
                                  ),
                                  Text("0",
                                      style: lexendBlack.copyWith(
                                          fontSize: Adaptive.h(3)))
                                ],
                              ),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: white,
                                shadowColor: Color.fromARGB(103, 105, 105, 105),
                                elevation: 3),
                          )),
                      SizedBox(width: 30),
                      SizedBox(
                          height: Adaptive.h(15),
                          width: Adaptive.w(32),
                          child: TextButton(
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.arrow_circle_up,
                                    size: Adaptive.h(5),
                                    color: darkBlue,
                                  ),
                                  Text(
                                    "Versement",
                                    style: lexendBlack.copyWith(
                                        fontSize: Adaptive.h(1.5)),
                                  ),
                                  Text("0",
                                      style: lexendBlack.copyWith(
                                          fontSize: Adaptive.h(3)))
                                ],
                              ),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: white,
                                shadowColor: Color.fromARGB(103, 105, 105, 105),
                                elevation: 3),
                          )),
                    ],
                  ),
                ],
              ),
            )
          ]),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(50, 0, 0, 0),
                    spreadRadius: 0,
                    blurRadius: 10),
              ],
            ),
            child: BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.apps), label: 'Accueil'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.directions_run), label: 'Courses'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.autorenew_sharp), label: 'Transaction'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: 'Paramètres'),
              ],
              selectedItemColor: darkBlue,
              unselectedItemColor: Colors.grey,
              elevation: 12,
            ),
          ));
    });
  }
}
