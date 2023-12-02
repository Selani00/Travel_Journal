import 'package:flutter/material.dart';
import 'package:travel_journal/components/app_images.dart';

class OneTimeThirdPage extends StatelessWidget {
  const OneTimeThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppImages.onetimethird,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width,
                color: const Color.fromRGBO(0, 0, 0, 1).withOpacity(0.3),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: const Text(
                          "Let's make your memories unforgettable",
                          style: TextStyle(
                              fontSize: 32,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(Icons.double_arrow_rounded,
                            color: Colors.white, size: 70),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
