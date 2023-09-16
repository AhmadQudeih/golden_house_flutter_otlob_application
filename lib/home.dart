// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> imagesStore = [
    'assets/images/Ellipse 10.png',
    'assets/images/Group 200.png',
  ];
  List<String> imagesStore1 = [
    'assets/images/Ellipse 11.png',
    'assets/images/Ellipse 9.png',
  ];
  List<String> iconsStore = [
    'assets/images/Icons/Group 147.png',
    'assets/images/Icons/Layer 2.png',
    'assets/images/Icons/Time.png',
  ];
  List<String> titleStore = [
    ' مطبخ الشام للفطائر الجاهزة ',
    'من عدة مطاعم',
  ];
  List<String> textStore4 = [
    'يجب توصيله خلال 25 - 30 دقيقة',
    'يبعد عنك 0.3 كم',
    '22-05-2022   10:45 مساء',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5a5a65),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              width: double.infinity,
              height: 93,
              decoration: BoxDecoration(
                color: Color.fromRGBO(46, 46, 60, 0.79),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
              ),
            ),
            Positioned(
              top: 30,
              right: 16,
              left: 16,
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/Ellipse 1.png',
                    height: 37,
                    width: 37,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Text(
                      'مرحباً،',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: 'Almarai',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 5),
                    child: Text(
                      'أحمد',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: 'Almarai',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Spacer(),
                  Image.asset('assets/images/Icons/Group 2.png'),
                ],
              ),
            ),
            Positioned(
              top: 120,
              right: 16,
              child: Text(
                'الطلبات الحالية',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Almarai',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              top: 110,
              right: 16,
              left: 16,
              bottom: 300,
              child: ListView.separated(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Color(0xff6F6F79),
                        borderRadius: BorderRadius.circular(8)),
                    width: double.infinity,
                    height: 65,
                    child: Row(
                      children: [
                        Image.asset(imagesStore[index]),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: SizedBox(
                            width: 170,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  titleStore[index],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 9,
                                    fontFamily: 'Almarai',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Image.asset(iconsStore[index]),
                                    SizedBox(width: 5),
                                    Text(
                                      textStore4[index],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 6,
                                        fontFamily: 'Almarai',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Image.asset(iconsStore[1]),
                                    SizedBox(width: 5),
                                    Text(
                                      textStore4[1],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 6,
                                        fontFamily: 'Almarai',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Image.asset(iconsStore[2]),
                                    SizedBox(width: 5),
                                    Text(
                                      textStore4[2],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 6,
                                        fontFamily: 'Almarai',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 55, top: 7),
                          child: Column(
                            children: [
                              Container(
                                height: 22,
                                width: 77,
                                margin: EdgeInsets.only(bottom: 7),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'تلقي الطلب',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 8,
                                      fontFamily: 'Almarai',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xffFFC806),
                                    elevation: 0,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 22,
                                width: 77,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'تفاصيل',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 8,
                                      fontFamily: 'Almarai',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff2E2E3C),
                                    minimumSize: Size(20, 22),
                                    elevation: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 16,
                  );
                },
              ),
            ),
            Positioned(
              top: 320,
              right: 16,
              child: Text(
                'الطلبات الحالية',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Almarai',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              top: 305,
              right: 16,
              left: 16,
              bottom: 300,
              child: ListView.separated(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Color(0xff6F6F79),
                        borderRadius: BorderRadius.circular(8)),
                    width: double.infinity,
                    height: 65,
                    child: Row(
                      children: [
                        Image.asset(imagesStore1[index]),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: SizedBox(
                            width: 170,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  titleStore[index],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 9,
                                    fontFamily: 'Almarai',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Image.asset(iconsStore[index]),
                                    SizedBox(width: 5),
                                    Text(
                                      'تم التوصيل',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 6,
                                        fontFamily: 'Almarai',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          margin:
                              EdgeInsets.only(right: 55, top: 10, bottom: 10),
                          child: Center(
                            child: Text(
                              'مكتمل',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Almarai',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                          width: 77,
                          height: 36.8,
                          decoration: ShapeDecoration(
                            color: Color(0xFF2E2E3C),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 16,
                  );
                },
              ),
            ),
            Positioned(
              bottom: 100,
              right: 11,
              left: 20,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    color: Color(0xff6F6F79),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 3),
                          blurRadius: 5,
                          color: Colors.black.withOpacity(0.5))
                    ]),
                height: 65,
                child: Row(
                  children: [
                    Image.asset(imagesStore[0]),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: SizedBox(
                        width: 170,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              titleStore[0],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 9,
                                fontFamily: 'Almarai',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Image.asset(iconsStore[1]),
                                SizedBox(width: 5),
                                Text(
                                  'تم التوصيل',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 6,
                                    fontFamily: 'Almarai',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      margin: EdgeInsets.only(right: 55, top: 10, bottom: 10),
                      child: Center(
                        child: Text(
                          'مكتمل',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Almarai',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      width: 77,
                      height: 36.8,
                      decoration: ShapeDecoration(
                        color: Color(0xFF2E2E3C),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
