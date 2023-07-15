import 'package:bhagwadgita/Pages/HomePage/homePage.dart';
import 'package:flutter/material.dart';

import 'Pages/HomePage/LanguagePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LanguagePage());
  }
}
