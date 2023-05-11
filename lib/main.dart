import 'package:flutter/material.dart';
import 'package:blucash_agent/Accueil/accueil.dart';

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
        home: Accueil());
  }
}
