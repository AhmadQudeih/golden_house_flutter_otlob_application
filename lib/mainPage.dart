// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:golden_house_flutter_otlob_application/home.dart';
import 'package:golden_house_flutter_otlob_application/profil.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _FirstState();
}

class _FirstState extends State<MainPage> {
  int currentTndex = 0;
  List screens = [Profil(), Home()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Color(0xff5a5a65),
        
        ),

        child: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
          child: BottomNavigationBar(
            backgroundColor: Color(0xff2E2E3C),
            currentIndex: currentTndex,
            onTap: (int index) {
              setState(() {
                currentTndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_2_rounded), label: 'حسابي'),
              BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'الرئيسية'),
            ],
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: TextStyle(
              color: Color(0xFFFFC806),
              fontSize: 10,
              fontFamily: 'Almarai',
              fontWeight: FontWeight.w700,
            ),
            unselectedLabelStyle: TextStyle(
              color: Color(0xffffffff),
              fontSize: 10,
              fontFamily: 'Almarai',
              fontWeight: FontWeight.w500,
            ),
            selectedItemColor: Color(0xffFFC806),
            unselectedItemColor: Colors.white,
          ),
        ),
      ),
      body: screens[currentTndex],
    );
  }
}
