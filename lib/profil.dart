// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  List<String> Stor1 = [
    'رقم الهاتف',
    'العنوان',
    'عدد الطلبات',
    'رقم الهوية',
    'نوع المركبة',
    'رقم المركبة',
    'موديل المركبة'
  ];
  List<String> store2 = [
    '01020114685',
    '25 شارع الملكة - فيصل - الجيزة',
    '45 طلب',
    '475020114685',
    'Vespa',
    'ATG 478',
    'HYD 2545'
  ];
  List<String> store3 = [
    'assets/images/Icons/Group 175.png',
    'assets/images/Icons/Group 175.png',
    'assets/images/Icons/Group 175.png',
    'assets/images/Icons/Group 175.png',
    'assets/images/Icons/Group 175.png',
    'assets/images/Icons/Group 175.png',
    'assets/images/Icons/Group 175.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5a5a65),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              width: double.infinity,
              height: 116,
              decoration: BoxDecoration(
                color: Color.fromRGBO(46, 46, 60, 0.79),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
              ),
            ),
            Positioned(
              top: 80,
              right: 135,
              child: Column(
                children: [
                  Image.asset('assets/images/Ellipse 1.png'),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Row(
                        children: [
                          Text(
                            'أحمد علي إبراهيم',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Almarai',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Image.asset(
                                'assets/images/Icons/Group 175.png'),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 204,
              right: 20,
              left: 20,
              bottom: 300,
              child: ListView.separated(
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: Text(
                            Stor1[index],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 9,
                              fontFamily: 'Almarai',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          width: 120,
                          child: Text(
                            store2[index],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 9,
                              fontFamily: 'Almarai',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Spacer(),
                        Image.asset(store3[index]),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.white,
                    height: 25,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
