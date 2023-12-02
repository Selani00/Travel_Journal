import 'package:flutter/material.dart';
import 'package:travel_journal/config/app_routes.dart';

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
      // home: AppSetUpPage(),
      initialRoute: AppRoutes.onetimefirst,
      routes: AppRoutes.pages,
    );
  }
}