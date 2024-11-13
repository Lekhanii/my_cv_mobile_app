import 'package:flutter/material.dart';
import 'package:my_cv_mobile_app/screens/main_screen.dart';

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
              ),
              CircularProgressIndicator(
                color: Colors.blue,
              ),
            ])));
  }
}