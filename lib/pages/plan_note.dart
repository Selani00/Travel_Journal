import 'package:flutter/material.dart';
import 'package:travel_journal/components/app_colors.dart';
import 'package:travel_journal/components/app_images.dart';

class JourneyPlan extends StatefulWidget {
  const JourneyPlan({super.key});

  @override
  State<JourneyPlan> createState() => _JourneyPlanState();
}

class _JourneyPlanState extends State<JourneyPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        leading: IconTheme(
          data: IconThemeData(
            color: Colors.white,
            size: 25,
          ),
          child: Icon(Icons.arrow_back),
        ),
        title: TextField(
          style: const TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          decoration: InputDecoration(
              hintText: "Title",
              hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
                  fontWeight: FontWeight.w300)),
        ),
        backgroundColor: AppColors.mainColor,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.planback), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
