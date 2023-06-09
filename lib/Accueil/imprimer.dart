import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blucash_agent/Shared/Statique.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Imprimer extends StatefulWidget {
  const Imprimer({super.key});

  @override
  State<Imprimer> createState() => _ImprimerState();
}

class _ImprimerState extends State<Imprimer> {
  // Color code
  Color darkBlue = Color(0xFF113b7f);
  Color lightRed = Color(0xFFCE2835);
  Color lightBlue = Color(0xFF49BAEB);
  Color darkPink = Color(0xFF41A6C);
  Color grey = Color(0xFF212529);
  Color white = Colors.white;

  // font familly with their respective colors

  var lexendWhite = GoogleFonts.lexend(color: Colors.white);
  var lexendBlack = GoogleFonts.lexend(color: Colors.black);
  var lexendBlue = GoogleFonts.lexend(color: Color(0xFF113b7f));
  var lexendGrey = GoogleFonts.lexend(color: Color(0xFF212529));

  TextEditingController _bluCode = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    _bluCode.text = "BLU - 53085502";

    return ResponsiveSizer(builder: (context, Orientation, DeviceType) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 9),
                child: Center(
                    child: Text("Ajouter une imprimante",
                        style: lexendBlue.copyWith(fontSize: 16))),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 170, 201, 255)),
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(255, 214, 229, 255),
                      ),
                      height: 110,
                      width: 250,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.warning, color: darkBlue),
                            Padding(
                              padding: const EdgeInsets.only(right: 6),
                              child: Text(
                                'Ouvrez l’application Bluprint et \n authentifiez  vous en utilisant le \n code  ci-dessous. Une  fois \n authentifie ce dernier vous \n servira  d’assistance d’impression.',
                                style: lexendBlack.copyWith(
                                    fontSize: Adaptive.sp(14.5),
                                    color: darkBlue),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12, bottom: 5),
                      child: SizedBox(
                        height: 40,
                        child: CupertinoTextField(
                          readOnly: true,
                          suffix: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.copy,
                                color: Colors.grey,
                                size: 17,
                              )),
                          controller: _bluCode,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                        width: 150,
                        height: 40,
                        child: TextButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.android, color: white),
                                Text(
                                  "  Bluprint",
                                  style: lexendWhite,
                                ),
                              ],
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: darkBlue))),
                    Divider(),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Telecharger gratuitement Bluprint",
                            style: lexendBlack,
                          ),

                          Row(
                            children: [
                              Text(
                                'sur',
                                style: lexendBlack,
                              ),
                              InkWell(
                                child: Text(
                                  " bluprint",
                                  style: lexendBlue,
                                ),
                                onTap: () {},
                              )
                            ],
                          )
                          // TextButton(
                          //     onPressed: () {},
                          //     child: Text('Play Store', style: lexendBlue)
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
