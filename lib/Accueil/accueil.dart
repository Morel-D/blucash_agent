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
          appBar: AppBar(
            automaticallyImplyLeading: false,
            // toolbarHeight: 100,
            title:
                Container(child: Image(image: AssetImage("assets/logo.png"))),
            backgroundColor: darkBlue,
            elevation: 0,
            actions: [
              IconButton(
                  onPressed: () {
                    // await showPrintOutDialog(context)
                    // showPrintOutDialog(context);
                  },
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
          body: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    child: Row(
                      children: [
                        Text("Accueil",
                            style: lexendBlue.copyWith(fontSize: 25)),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.print)),
                            TextButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.account_balance),
                                label: Text(
                                  'Dépôt',
                                  style: lexendBlue,
                                )),
                            // IconButton(onPressed: (){}, icon: Icon(Icons.))
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
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
