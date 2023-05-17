import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:blucash_agent/Shared/Statique.dart';

class Movement extends StatefulWidget {
  const Movement({super.key});

  @override
  State<Movement> createState() => _MovementState();
}

class _MovementState extends State<Movement> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, Orientation, DeviceType) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Mouvement du solde', style: TextStyle(color: white)),
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
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                  style: lexendGrey.copyWith(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(height: 3),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Row(
                    children: [
                      Container(
                        // width: 290,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 0.5, color: Colors.grey)),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text('05/17/2023 - 05/17/2023'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 7),
                        child: SizedBox(
                          height: 45,
                          width: 140,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Modifier la date',
                              style: lexendWhite,
                            ),
                            style:
                                TextButton.styleFrom(backgroundColor: darkBlue),
                          ),
                        ),
                      ),
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
                            'ID',
                            style: lexendBlack.copyWith(
                                fontWeight: FontWeight.bold),
                          ),
                          Text('TYPE',
                              style: lexendBlack.copyWith(
                                  fontWeight: FontWeight.bold)),
                          Text('MONTANT',
                              style: lexendBlack.copyWith(
                                  fontWeight: FontWeight.bold)),
                          Text('SOLDE',
                              style: lexendBlack.copyWith(
                                  fontWeight: FontWeight.bold)),
                          Text('DATE/HEURE',
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
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
