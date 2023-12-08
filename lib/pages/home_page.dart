import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 393,
      height: 852,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xFF283F31), Color(0x00283F31)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 393,
              height: 852,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/393x852"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 393,
              height: 852,
              decoration: BoxDecoration(color: Color(0x59283F31)),
            ),
          ),
          Positioned(
            left: 17,
            top: 216,
            child: Container(
              width: 347,
              height: 523,
              child: Stack(
                children: [
                  Positioned(
                    left: 6,
                    top: 495,
                    child: SizedBox(
                      width: 135,
                      height: 27,
                      child: Text(
                        'Journey 1 -10 Nov',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'Inknut Antiqua',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 147,
                      height: 213,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 6,
                    top: 273,
                    child: Container(
                      width: 147,
                      height: 213,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 200,
                    top: 0,
                    child: Container(
                      width: 147,
                      height: 213,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 200,
                    top: 273,
                    child: Container(
                      width: 147,
                      height: 213,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 222,
                    child: SizedBox(
                      width: 135,
                      height: 27,
                      child: Text(
                        'Journey 1 -10 Nov',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'Inknut Antiqua',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 200,
                    top: 222,
                    child: SizedBox(
                      width: 135,
                      height: 27,
                      child: Text(
                        'Journey 210 Nov',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'Inknut Antiqua',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 209,
                    top: 496,
                    child: SizedBox(
                      width: 135,
                      height: 27,
                      child: Text(
                        'Journey 1 -10 Nov',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'Inknut Antiqua',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 26,
            top: 729,
            child: Container(
              width: 341,
              height: 95,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 31,
                    child: Container(
                      width: 341,
                      height: 64,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 135,
                    top: 0,
                    child: Container(
                      width: 60,
                      height: 60,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: ShapeDecoration(
                                color: Color(0xFF7A7A7A),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 393,
              height: 96,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 393,
                      height: 96,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.00, -1.00),
                          end: Alignment(0, 1),
                          colors: [Color(0xC1283F31), Color(0xFF283F31)],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 11,
                    top: 23,
                    child: Container(
                      width: 50,
                      height: 50,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: ShapeDecoration(
                                color: Color(0xFFD9D9D9),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 70,
                    top: 37,
                    child: SizedBox(
                      width: 143,
                      height: 22,
                      child: Text(
                        'Hi, Selani',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Inknut Antiqua',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 44,
            top: 130,
            child: Container(
              width: 293,
              height: 52,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 3,
                    child: Container(
                      width: 293,
                      height: 49,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 54,
                    top: 0,
                    child: SizedBox(
                      width: 128,
                      height: 52,
                      child: Text(
                        'Search',
                        style: TextStyle(
                          color: Color(0xFF616161),
                          fontSize: 20,
                          fontFamily: 'Inknut Antiqua',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
