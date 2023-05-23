import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:blucash_agent/Shared/Statique.dart';

class Ajouter extends StatefulWidget {
  const Ajouter({super.key});

  @override
  State<Ajouter> createState() => _AjouterState();
}

TextEditingController _dateRange = TextEditingController();

class _AjouterState extends State<Ajouter> {
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

  bool? value = false;
  var val = "";
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    _dateRange.text = "12/02/2023";

    return ResponsiveSizer(builder: (context, Orientation, DeviceType) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            "Ajouter un utilisateur",
            style: lexendWhite,
          ),
          elevation: 0,
          backgroundColor: darkBlue,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 15, left: 18, right: 18),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//Checkbox condition
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                      checkColor: Colors.white,
                      activeColor: darkBlue,
                      value: this.value,
                      onChanged: (bool? newValue) {
                        setState(() {
                          this.value = newValue;
                        });
                      }),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      "Cet utilisateur est connecté à \n l'application mobile Blucash",
                      style: lexendBlack.copyWith(
                          fontSize: Adaptive.sp(16),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),

// textfeild
              // Padding(
              //   padding: const EdgeInsets.symmetric(vertical: 10),
              //   child: SizedBox(
              //       // width: Adaptive.w(52),
              //       height: 40,
              //       child: CupertinoTextField(
              //         placeholder: "USER CODE",
              //       )),
              // ),

              // First Row ...........................

              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 48,
                      width: 44,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.bodySmall,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            fillColor: Color.fromARGB(91, 158, 158, 158),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(0, 158, 158, 158)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(0, 158, 158, 158)),
                            )),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(width: 7),
                    // Second Box ...........................
                    SizedBox(
                      height: 48,
                      width: 44,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.bodySmall,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            fillColor: Color.fromARGB(91, 158, 158, 158),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(0, 158, 158, 158)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(0, 158, 158, 158)),
                            )),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(width: 7),

// Third Box ...........................
                    SizedBox(
                      height: 48,
                      width: 44,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.bodySmall,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            fillColor: Color.fromARGB(91, 158, 158, 158),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(0, 158, 158, 158)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(0, 158, 158, 158)),
                            )),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(width: 7),

// Fourth Box ...........................
                    SizedBox(
                      height: 48,
                      width: 44,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.bodySmall,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            fillColor: Color.fromARGB(91, 158, 158, 158),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(0, 158, 158, 158)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(0, 158, 158, 158)),
                            )),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(width: 7),
                    SizedBox(
                      height: 48,
                      width: 44,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.bodySmall,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            fillColor: Color.fromARGB(91, 158, 158, 158),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(0, 158, 158, 158)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(0, 158, 158, 158)),
                            )),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(width: 7),

                    SizedBox(
                      height: 48,
                      width: 44,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.bodySmall,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            fillColor: Color.fromARGB(91, 158, 158, 158),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(0, 158, 158, 158)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(0, 158, 158, 158)),
                            )),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                  ],
                ),
              ),
// verification button
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Center(
                  child: CupertinoButton(
                      child: Text(
                        "Vérifier",
                        style: lexendWhite,
                      ),
                      onPressed: () {},
                      color: grey),
                ),
              ),
// Information
              SizedBox(height: 15),
              Text(
                "Invitez cet utilisateur à vous partager le",
                style: lexendBlack.copyWith(
                    fontSize: Adaptive.sp(17), color: Colors.grey),
              ),
              Row(
                children: [
                  Text("USER CODE",
                      style: lexendBlack.copyWith(
                          fontSize: Adaptive.sp(17),
                          color: Colors.grey,
                          fontWeight: FontWeight.bold)),
                  Text(" obtenu depuis l'application",
                      style: lexendBlack.copyWith(
                          fontSize: Adaptive.sp(17), color: Colors.grey))
                ],
              ),

              Text(" mobile.",
                  style: lexendBlack.copyWith(
                      fontSize: Adaptive.sp(17), color: Colors.grey)),
// Divider
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Divider(),
              ),

// Second heading
              Row(
                children: [
                  Icon(Icons.info, color: Colors.grey),
                  SizedBox(width: 5),
                  Text(
                    "A PROPOS",
                    style: lexendBlack.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: Adaptive.sp(18)),
                  )
                ],
              ),
// Name & surname form filling
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: Adaptive.h(19.5),
                        height: 45,
                        child: CupertinoTextField(
                          placeholder: "Prénom",
                        )),
                    SizedBox(width: 12),
                    SizedBox(
                        width: Adaptive.h(19.5),
                        height: 45,
                        child: CupertinoTextField(
                          placeholder: "Nom",
                        )),
                  ],
                ),
              ),
// telephone textfeild
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: SizedBox(
                  height: 45,
                  child: CupertinoTextField(
                    placeholder: "Téléphone",
                  ),
                ),
              ),
// switcher
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    CupertinoSwitch(
                        value: this.switchValue,
                        onChanged: (bool? newValue) {
                          setState(() {
                            this.switchValue = newValue ?? false;
                          });
                        }),
                    SizedBox(width: 5),
                    Text(
                      'Compatible WhatsApp',
                      style: lexendBlack.copyWith(fontSize: Adaptive.sp(17)),
                    )
                  ],
                ),
              ),
//  nationlaity row
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: SizedBox(
                  height: 50,
                  child: DropdownButtonFormField(
                    decoration:
                        formTextDecoration.copyWith(hintText: "Nationalité"),
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
                          style: TextStyle(fontSize: Adaptive.sp(14)),
                        ),
                      );
                      // );/
                    }).toList(),
                  ),
                ),
              ),

// Date of birth & gender row
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: Adaptive.h(19.5),
                        height: 50,
                        child: CupertinoTextField(
                          readOnly: true,
                          controller: _dateRange,
                          placeholder: "Date de naissance ",
                          suffix: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.calendar_month,
                                color: Colors.grey,
                              )),
                        )),
                    SizedBox(width: 12),
                    SizedBox(
                      height: 50,
                      width: Adaptive.h(19.5),
                      child: DropdownButtonFormField(
                        decoration:
                            formTextDecoration.copyWith(hintText: "Genre"),
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
                              style: TextStyle(fontSize: Adaptive.sp(14)),
                            ),
                          );
                          // );/
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),

// second heading

              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 15),
                child: Row(
                  children: [
                    Icon(Icons.badge, color: Colors.grey),
                    SizedBox(width: 5),
                    Text(
                      "IDENTIFICATION",
                      style: lexendBlack.copyWith(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: Adaptive.sp(18)),
                    )
                  ],
                ),
              ),

// identificatyion row
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: SizedBox(
                  height: 45,
                  child: CupertinoTextField(
                    placeholder: "Identifiant unique, numéro de compte, ...",
                  ),
                ),
              ),

// upload file
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text("Document d'identification",
                          style: lexendBlack.copyWith(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 45,
                      child: CupertinoTextField(
                        readOnly: true,
                        suffix: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.upload_file,
                              color: Colors.grey,
                            )),
                        placeholder: "Choisir un fichier",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Text("Type de fichiers autorisé: Image et PDF",
                          style: lexendBlack.copyWith(color: Colors.grey)),
                    )
                  ],
                ),
              ),
// Document identification row
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 45,
                      child: CupertinoTextField(
                        readOnly: true,
                        suffix: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.location_on,
                              color: Colors.grey,
                            )),
                        placeholder: " Position GPS",
                      ),
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      height: 90,
// Adresse row
                      child: CupertinoTextField(
                        placeholder: "Adresse",
                        maxLines: 4,
                      ),
                    ),
                    SizedBox(height: 15),
// region selection row
                    SizedBox(
                      height: 50,
                      child: DropdownButtonFormField(
                        decoration: formTextDecoration.copyWith(
                            hintText:
                                "Sélectionner une localité/région/commune.",
                            hintStyle: TextStyle(color: Colors.grey)),
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
                              style: TextStyle(fontSize: Adaptive.sp(14)),
                            ),
                          );
                          // );/
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Divider(),
              ),
// Third heading
              Row(
                children: [
                  Icon(Icons.camera, color: Colors.grey),
                  SizedBox(width: 5),
                  Text(
                    "PHOTO",
                    style: lexendBlack.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: Adaptive.sp(18)),
                  )
                ],
              ),
// photo importing row
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.5, color: grey)),
                          child: Image(
                            image: AssetImage("assets/photo.png"),
                          ),
                        ),
                        SizedBox(height: 5),
                        CupertinoButton(
                          child: Text(
                            "Importer une photo",
                            style: lexendWhite,
                          ),
                          onPressed: () {},
                          color: grey,
                        )
                      ],
                    ),
                  )),
              Divider(),
              SizedBox(height: 20),
// save button
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CupertinoButton(
                    child: Text(
                      "Enregistrer",
                      style: lexendWhite,
                    ),
                    onPressed: () {},
                    color: darkBlue,
                  )
                ],
              ),
              SizedBox(height: 20),
            ]),
          ),
        ),
      );
    });
  }
}
