import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:blucash_agent/Shared/Statique.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Courses extends StatefulWidget {
  const Courses({super.key});

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
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
                  Icons.autorenew,
                  size: 25,
                )),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.account_circle,
                    color: white,
                    size: 30,
                  )),
            ),
          ],
        ),
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
                        Text("Courses",
                            style: lexendBlue.copyWith(fontSize: 25)),
                        SizedBox(
                          height: 40,
                          width: 120,
                          child: TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              color: grey,
                              size: 20,
                            ),
                            label: Text(
                              'Ajouter',
                              style: lexendBlack.copyWith(fontSize: 15),
                            ),
                            style: TextButton.styleFrom(
                                side: BorderSide(width: 0.5, color: grey)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                    width: Adaptive.w(90),
                    height: 30,
                    child: CupertinoTextField(
                      placeholder: "Tirez par nom",
                      suffix: Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ),
      );
    });
  }
}
