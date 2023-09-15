// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/image 1.png',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'أطلب',
                    style: TextStyle(
                        fontSize: 47,
                        fontFamily: 'Almarai',
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFFC806)),
                  ),
                  Text(
                    'Otlob',
                    style: TextStyle(
                        fontSize: 47,
                        fontFamily: 'Almarai',
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFFFFFF)),
                  ),
                  Divider(
                    color: Color(0xFFFFC806),
                    indent: 150,
                    endIndent: 150,
                    height: 20,
                    thickness: 2,
                  ),
                  Text(
                    'تطبيق السائق',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Almarai',
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
