import 'package:flutter/material.dart';
import 'package:foody/app/user/fragments/places/biratnagar/dashboard_fragment.dart';
import 'package:foody/app/user/splashScreen/splash_screen.dart';
import 'package:foody/app/user/userPreferences/user_prferences.dart';
import 'package:get/get.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Food app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FutureBuilder(
        future: RememberUserPrefs.readUseInfo(),
        builder: (context, dataSnapshot) {
          if(dataSnapshot.data == null)
          {
            return const MYSplashScreen();
          }
          else
          {
            return BrtDashBoard();
          }
        },
      ),
    );
  }
}
