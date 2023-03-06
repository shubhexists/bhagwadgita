import 'package:bhagwadgita/Pages/ContentsPage/contentsPage.dart';
import 'package:bhagwadgita/Pages/HomePage/homePage.dart';
import 'package:bhagwadgita/Pages/Shloka%20Page/shlokaPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Bhagwat Gita', home: CatalogScreen());
  }
}
