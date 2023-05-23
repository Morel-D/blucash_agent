import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:blucash_agent/Shared/Statique.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';

class Depot extends StatefulWidget {
  const Depot({super.key});

  @override
  State<Depot> createState() => _DepotState();
}

class _DepotState extends State<Depot> {
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

    var dropdownValue = "0";

    TextEditingController _timeRange = TextEditingController();

    _timeRange.text = "05/17/2023 - 05/17/2023";

    return ResponsiveSizer(builder: (context, Orientation, DeviceType) {
      return Scaffold(
        // The top bar
        appBar: AppBar(
          title: Text('Dépôt', style: TextStyle(color: white)),
          backgroundColor: darkBlue,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.autorenew)),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.money_sharp,
                  color: white,
                ),
                label: Text(
                  "0 FCFA",
                  style: lexendWhite,
                ))
          ],
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new_rounded)),
        ),
        // the body
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Center(
// The column containing the whole widgets
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
// Warning box
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 255, 221, 149)),
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFFFF3CD),
                      ),
                      height: Adaptive.h(12),
                      width: 150,
                      child: Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Icon(Icons.warning,
                                    color: Color(0xFF886419)),
                              ),
                              Text(
                                "Aucun établissement n'est disponible \n pour le  moment, prière de contactez \n votre  administration pour \n plus d'informations.",
                                style: lexendBlack.copyWith(
                                    fontSize: Adaptive.sp(15.5),
                                    color: Color(0xFF886419)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
// Dropdown textfield
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: SizedBox(
                      height: 40,
                      child: DropdownButtonFormField(
                        decoration: formTextDecoration.copyWith(
                            hintText: "Sélectionnez l'établissement"),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: <String>['1', '2', '3', '4']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 20),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
// The textfield title
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(children: [
                      Text('Dépôt ',
                          style: lexendBlack.copyWith(
                              fontWeight: FontWeight.bold)),
                      Icon(Icons.arrow_circle_down, color: darkBlue)
                    ]),
                  ),
// The textfield
                  Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: SizedBox(
                          height: 40,
                          child: CupertinoTextField(
                            placeholder: "Montant",
                          ))),
// the textfield title
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text("Récu de la transaction",
                        style:
                            lexendBlack.copyWith(fontWeight: FontWeight.bold)),
                  ),
// The row containing the upload btn & the textfield
                  Padding(
                    padding: const EdgeInsets.only(bottom: 14),
                    child: Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: SizedBox(
                            height: 40,
                            child: CupertinoTextField(
                              readOnly: true,
                              placeholder: "Choisir un fichier",
                              suffix: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.upload_file,
                                    color: Colors.grey,
                                  )),
                            ))),
                  ),
// The validation btn
                  SizedBox(
                    width: 100,
                    height: 40,
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Valider', style: lexendWhite),
                      style: TextButton.styleFrom(backgroundColor: darkBlue),
                    ),
                  ),

                  SizedBox(width: 320, child: Divider()),

                  Padding(
                    padding: EdgeInsets.only(top: 8, bottom: 8),
                    child: Row(
                      children: [
                        Icon(
                          Icons.swap_vert,
                          color: Colors.black,
                        ),
                        Text(
                          " Historique",
                          style:
                              lexendBlack.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),

                  Text(
                    "Filtrer par date",
                    style:
                        lexendGrey.copyWith(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(height: 3),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 40,
                          width: 250,
                          child: CupertinoTextField(
                            readOnly: true,
                            controller: _timeRange,
                            suffix: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.calendar_month,
                                  color: Colors.grey,
                                )),
                          ),
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'MONTANT',
                              style: lexendBlack.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Adaptive.sp(12)),
                            ),
                            Text('BANQUE',
                                style: lexendBlack.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: Adaptive.sp(12))),
                            Text('STATUT',
                                style: lexendBlack.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: Adaptive.sp(12))),
                            Text('CONTROLEUR',
                                style: lexendBlack.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: Adaptive.sp(12))),
                            Text('DATE/HEURE',
                                style: lexendBlack.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: Adaptive.sp(12))),
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
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
