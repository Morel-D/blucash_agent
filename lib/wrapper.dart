import 'package:flutter/material.dart';
import 'package:blucash_agent/Courses/courses.dart';
import 'package:blucash_agent/Accueil/accueil.dart';
import 'package:blucash_agent/Shared/Statique.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  // navigation via Navigation bar item

  int _currentIndex = 0;

  final List<Widget> _children = [Accueil(), Courses()];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_currentIndex],

// Bottom navBar
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10), topLeft: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(50, 0, 0, 0),
                    spreadRadius: 0,
                    blurRadius: 10),
              ],
            ),
            child: BottomNavigationBar(
              onTap: onTabTapped,
              currentIndex: _currentIndex,
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
            )));
  }
}
