import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:blucash_agent/Shared/Statique.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blucash_agent/Accueil/imprimer.dart';

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
                    Icons.qr_code,
                    color: white,
                  )),
              IconButton(onPressed: () {}, icon: Icon(Icons.autorenew)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.account_circle,
                    color: white,
                    size: 35,
                  )),
            ],
          ),

          /// Container wrapping all the widget

          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Container(
// upper components (Row)
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Accueil",
                              style: lexendBlue.copyWith(fontSize: 30)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: 50,
// print the recite btn
                                child: TextButton.icon(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return Imprimer();
                                        });
                                  },
                                  icon: Padding(
                                    padding: const EdgeInsets.only(left: 6),
                                    child: Icon(
                                      Icons.print,
                                      color: grey,
                                      size: 20,
                                    ),
                                  ),
                                  label: Text(""),
                                  style: IconButton.styleFrom(
                                      side:
                                          BorderSide(width: 0.5, color: grey)),
                                ),
                              ),
                              SizedBox(width: 5),
                              TextButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.account_balance,
                                  color: grey,
                                  size: 20,
                                ),
                                label: Text(
                                  'Dépôt',
                                  style: lexendBlack.copyWith(fontSize: 13),
                                ),
                                style: TextButton.styleFrom(
                                    side: BorderSide(width: 0.5, color: grey)),
                              ),
                              SizedBox(width: 5),
                              SizedBox(
                                width: 50,
                                child: TextButton.icon(
                                  onPressed: () {},
                                  icon: Padding(
                                    padding: const EdgeInsets.only(left: 6),
                                    child: Icon(
                                      Icons.area_chart,
                                      color: grey,
                                      size: 20,
                                    ),
                                  ),
                                  label: Text(""),
                                  style: IconButton.styleFrom(
                                      side:
                                          BorderSide(width: 0.5, color: grey)),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(),

// middle content

                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 15, left: 15, right: 12),
// first row
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
// "Mon sold" sized box
                              SizedBox(
                                  height: Adaptive.h(15),
                                  width: Adaptive.w(45),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 2, top: 6),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.money,
                                              size: Adaptive.px(30),
                                              color: darkBlue,
                                            ),
                                            Text(
                                              "Mon Solde",
                                              style: lexendBlack.copyWith(
                                                  fontSize: Adaptive.px(17)),
                                            ),
                                            Text("0 FCFA",
                                                style: lexendBlack.copyWith(
                                                    fontSize: Adaptive.px(15),
                                                    fontWeight:
                                                        FontWeight.bold))
                                          ],
                                        ),
                                      ),
                                    ),
                                    style: TextButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        side: BorderSide(
                                            width: 0.5,
                                            color: Color.fromARGB(
                                                255, 223, 223, 223))),
                                  )),
// "Mes course" Sized box
                              SizedBox(
                                  height: Adaptive.h(15),
                                  width: Adaptive.w(45),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 2, top: 6),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.directions_bike,
                                              size: Adaptive.px(30),
                                              color: darkBlue,
                                            ),
                                            Text(
                                              "Mes Courses",
                                              style: lexendBlack.copyWith(
                                                  fontSize: Adaptive.px(17)),
                                            ),
                                            Text("0 FCFA",
                                                style: lexendBlack.copyWith(
                                                    fontSize: Adaptive.px(15),
                                                    fontWeight:
                                                        FontWeight.bold))
                                          ],
                                        ),
                                      ),
                                    ),
                                    style: TextButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        side: BorderSide(
                                            width: 0.5,
                                            color: Color.fromARGB(
                                                255, 223, 223, 223))),
                                  )),
                            ],
                          ),
                        ),
// Second Row
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15, left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
// "En validation" Sized box
                              SizedBox(
                                  height: Adaptive.h(15),
                                  width: Adaptive.w(45),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 2, top: 6),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.scale_outlined,
                                              size: Adaptive.px(30),
                                              color: darkBlue,
                                            ),
                                            Text(
                                              "En Validation",
                                              style: lexendBlack.copyWith(
                                                  fontSize: Adaptive.px(17)),
                                            ),
                                            Text("0 FCFA",
                                                style: lexendBlack.copyWith(
                                                    fontSize: Adaptive.px(15),
                                                    fontWeight:
                                                        FontWeight.bold))
                                          ],
                                        ),
                                      ),
                                    ),
                                    style: TextButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        side: BorderSide(
                                            width: 0.5,
                                            color: Color.fromARGB(
                                                255, 223, 223, 223))),
                                  )),
                            ],
                          ),
                        ),

// middle text
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, top: 15, bottom: 15),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.access_time_filled,
                                  color: Colors.grey,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 3, left: 2),
                                  child: Text(
                                    " Aujourd’hui",
                                    style:
                                        lexendGrey.copyWith(color: Colors.grey),
                                  ),
                                )
                              ]),
                        ),

// Third row

                        Padding(
                          padding: const EdgeInsets.only(left: 12, right: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // "Transaction" sized box
                              SizedBox(
                                  height: Adaptive.h(15),
                                  width: Adaptive.w(45),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 2, top: 6),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.swap_vert,
                                              size: Adaptive.px(30),
                                              color: darkBlue,
                                            ),
                                            Text(
                                              "Transaction",
                                              style: lexendBlack.copyWith(
                                                  fontSize: Adaptive.px(17)),
                                            ),
                                            Text("0 FCFA",
                                                style: lexendBlack.copyWith(
                                                    fontSize: Adaptive.px(15),
                                                    fontWeight:
                                                        FontWeight.bold))
                                          ],
                                        ),
                                      ),
                                    ),
                                    style: TextButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        side: BorderSide(
                                            width: 0.5,
                                            color: Color.fromARGB(
                                                255, 223, 223, 223))),
                                  )),
                              // "Collect" Sized box
                              SizedBox(
                                  height: Adaptive.h(15),
                                  width: Adaptive.w(45),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 2, top: 6),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.arrow_circle_down,
                                              size: Adaptive.px(30),
                                              color: darkBlue,
                                            ),
                                            Text(
                                              "Collect",
                                              style: lexendBlack.copyWith(
                                                  fontSize: Adaptive.px(17)),
                                            ),
                                            Text("0 FCFA",
                                                style: lexendBlack.copyWith(
                                                    fontSize: Adaptive.px(15),
                                                    fontWeight:
                                                        FontWeight.bold))
                                          ],
                                        ),
                                      ),
                                    ),
                                    style: TextButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        side: BorderSide(
                                            width: 0.5,
                                            color: Color.fromARGB(
                                                255, 223, 223, 223))),
                                  )),
                            ],
                          ),
                        ),

// Fourth sized box

                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, left: 12, right: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
// "Retour" sized box
                              SizedBox(
                                  height: Adaptive.h(15),
                                  width: Adaptive.w(45),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 2, top: 6),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.arrow_circle_right_outlined,
                                              size: Adaptive.px(30),
                                              color: darkBlue,
                                            ),
                                            Text(
                                              "Retour",
                                              style: lexendBlack.copyWith(
                                                  fontSize: Adaptive.px(17)),
                                            ),
                                            Text("0 FCFA",
                                                style: lexendBlack.copyWith(
                                                    fontSize: Adaptive.px(15),
                                                    fontWeight:
                                                        FontWeight.bold))
                                          ],
                                        ),
                                      ),
                                    ),
                                    style: TextButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        side: BorderSide(
                                            width: 0.5,
                                            color: Color.fromARGB(
                                                255, 223, 223, 223))),
                                  )),
// "Versement" Sized box
                              SizedBox(
                                  height: Adaptive.h(15),
                                  width: Adaptive.w(45),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 2, top: 6),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.arrow_circle_up,
                                              size: Adaptive.px(30),
                                              color: darkBlue,
                                            ),
                                            Text(
                                              "Versement",
                                              style: lexendBlack.copyWith(
                                                  fontSize: Adaptive.px(17)),
                                            ),
                                            Text("0 FCFA",
                                                style: lexendBlack.copyWith(
                                                    fontSize: Adaptive.px(15),
                                                    fontWeight:
                                                        FontWeight.bold))
                                          ],
                                        ),
                                      ),
                                    ),
                                    style: TextButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        side: BorderSide(
                                            width: 0.5,
                                            color: Color.fromARGB(
                                                255, 223, 223, 223))),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
// bottom text
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 12, top: 15, bottom: 15),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.swap_vert,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3, left: 2),
                            child: Text(
                              " Activités du jour",
                              style: lexendGrey.copyWith(color: Colors.grey),
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
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.file_copy_outlined)),
                          Text(
                            'TYPE',
                            style: lexendBlack.copyWith(
                                fontWeight: FontWeight.bold),
                          ),
                          Text('MONTANT',
                              style: lexendBlack.copyWith(
                                  fontWeight: FontWeight.bold)),
                          Text('UTILISATEUR',
                              style: lexendBlack.copyWith(
                                  fontWeight: FontWeight.bold)),
                          Text('DATE',
                              style: lexendBlack.copyWith(
                                  fontWeight: FontWeight.bold)),
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
                      SizedBox(height: 20)
                    ],
                  ),
                ],
              ),
            ),
          ),

// Bottom navBar
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
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: SizedBox(
                        width: 35, child: SvgPicture.asset("assets/menu.svg")),
                    label: ""),
                BottomNavigationBarItem(
                    icon: SizedBox(
                        width: 35, child: SvgPicture.asset("assets/run.svg")),
                    label: "",
                    backgroundColor: Color.fromARGB(255, 5, 17, 22)),
                BottomNavigationBarItem(
                    icon: SizedBox(
                        width: 35,
                        child: SvgPicture.asset("assets/transaction.svg")),
                    label: ""),
                BottomNavigationBarItem(
                    icon: SizedBox(
                        width: 35,
                        child: SvgPicture.asset("assets/setting.svg")),
                    label: ""),
              ],
              // selectedItemColor: darkBlue,
              unselectedItemColor: Colors.grey,
              elevation: 12,
            ),
          ));
    });
  }
}
