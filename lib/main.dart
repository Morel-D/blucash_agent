import 'package:blucash_agent/Courses/operation.dart';
import 'package:flutter/material.dart';
import 'package:blucash_agent/Accueil/accueil.dart';
import 'package:blucash_agent/Accueil/depot.dart';
import 'package:blucash_agent/Accueil/movement.dart';
import 'package:blucash_agent/wrapper.dart';
import 'package:blucash_agent/Courses/courses.dart';

import 'package:blucash_agent/Courses/Test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {'/accueil': (context) => Accueil()},
        home: Operation());
  }
}
