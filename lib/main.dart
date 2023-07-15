import 'package:bhagwadgita/Pages/ContentsPage/contentsPage.dart';
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
    return const MaterialApp(home: CatalogScreen());
  }
}
