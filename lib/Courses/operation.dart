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

    List<String> tabs = ["Collect", "Retour"];
    int current = 0;

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
                            'Il est formellement interdit de collecter tout montant supérieur  à 100,000 FCFA sans confirmation.',
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
                    padding: const EdgeInsets.only(top: 15),
                    child: SizedBox(
                        height: 45,
                        child: CupertinoTextField(
                          placeholder: "Montant",
                        )),
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
                    padding:
                        const EdgeInsets.only(left: 12, top: 15, bottom: 15),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.swap_vert,
                            color: grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 1, left: 2),
                            child: Text(
                              " Transactions du jour",
                              style: lexendGrey.copyWith(
                                  color: grey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
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
                                fontWeight: FontWeight.bold,
                                fontSize: Adaptive.sp(14)),
                          ),
                          Text('MONTANT',
                              style: lexendBlack.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Adaptive.sp(14))),
                          Text('UTILISATEUR',
                              style: lexendBlack.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Adaptive.sp(14))),
                          Text('DATE',
                              style: lexendBlack.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Adaptive.sp(14))),
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
          ));
    });
  }
}
