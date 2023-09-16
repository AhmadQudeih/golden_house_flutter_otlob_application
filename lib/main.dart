import 'package:flutter/material.dart';
import 'package:golden_house_flutter_otlob_application/asdf.dart';
import 'package:golden_house_flutter_otlob_application/firstPage.dart';
import 'package:golden_house_flutter_otlob_application/mainPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
