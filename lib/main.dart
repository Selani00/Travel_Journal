import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:travel_journal/config/app_routes.dart';
import 'package:travel_journal/firebase_options.dart';
import 'package:travel_journal/pages/accout_setup_page.dart';
import 'package:travel_journal/pages/plan_note.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: JourneyPlan(),
      // initialRoute: AppRoutes.start,
      // routes: AppRoutes.pages,
    );
  }
}
