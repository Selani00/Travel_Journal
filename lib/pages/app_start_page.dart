import 'package:flutter/material.dart';
import 'package:travel_journal/components/app_colors.dart';
import 'package:travel_journal/components/app_images.dart';
import 'package:travel_journal/config/app_routes.dart';

class AppStartPage extends StatelessWidget {
  const AppStartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppImages.startImg,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromRGBO(0, 0, 0, 1).withOpacity(0.3),
              child: Column(
                children: [
                  Spacer(),
                  Container(
                    height: 62,
                    width: 311,
                    decoration: BoxDecoration(
                      color: AppColors.yellowColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.of(context).pushNamed(AppRoutes.onetimefirst),
                          child: Text(
                            "Travel Journal",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 36,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  const Text(
                    "Travel the world & make memories",
                    style: TextStyle(
                      color: AppColors.yellowColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.67,
            left: MediaQuery.of(context).size.width * 0.5 - 50,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                  right: 10,
                  top: 7,
                  bottom: 10,
                ),
                child: Image.asset(
                  AppImages.logo,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
