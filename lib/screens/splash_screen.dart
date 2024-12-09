import 'package:flutter/material.dart';
import 'package:my_cv_mobile_app/screens/calc/calc_screen.dart';
import 'package:my_cv_mobile_app/screens/home/home_screen.dart';
import 'package:my_cv_mobile_app/screens/main_screen.dart';
import 'package:my_cv_mobile_app/screens/login/login_screen.dart';
import 'package:my_cv_mobile_app/screens/misclleanous/misclleanous_screen.dart';
import 'package:my_cv_mobile_app/screens/tapping/tapping_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const MainScreen()));
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Image(
                image: AssetImage("assets/images/splash_logo.jpg"),
                height: 100, // Adjust size as needed
              ),
              SizedBox(
                height: 20,
                width: 10,
              ),
              CircularProgressIndicator(
                color: Colors.blue,
              ),
            ])));
  }
}
