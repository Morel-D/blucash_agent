import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:blucash_agent/Shared/Statique.dart';

Widget alertBox(BuildContext context) {
  return Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
    child: Text('Hello'),
  );
}

Future<void> showPrintOutDialog(BuildContext context) {
  TextEditingController _bluCode = new TextEditingController();

  _bluCode.text = "BLU - 53085502";

  var text = Text("Play store", style: lexendBlue);

  return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1),
          ),
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: darkBlue,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Ajouter une imprimante", style: lexendWhite),
                        Icon(
                          Icons.close,
                          color: white,
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(22.0),
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
                        height: 100,
                        width: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            'Ouvrez l’application Bluprint et authentifiez vous en utilisant le code ci-dessous. Une fois authentifie ce dernier vous servira d’assistance d’impression.',
                            style: lexendBlack.copyWith(
                                fontSize: 12, color: darkBlue),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12, bottom: 5),
                        child: SizedBox(
                          height: 40,
                          child: TextFormField(
                            readOnly: true,
                            controller: _bluCode,
                            decoration: formTextDecoration.copyWith(
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.copy,
                                    size: 17,
                                  )),
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 23),
                            ),
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                      ),
                      SizedBox(
                          width: 150,
                          height: 40,
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Bluprint",
                                style: lexendWhite,
                              ),
                              style: TextButton.styleFrom(
                                  backgroundColor: darkBlue))),
                      Divider(),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Telecharger gratuitement Bluprint sur",
                              style: lexendBlack,
                            ),
                            // TextButton(
                            //     onPressed: () {},
                            //     child: Text('Play Store', style: lexendBlue))
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
