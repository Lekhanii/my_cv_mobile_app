import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_cv_mobile_app/Controller/calc_controller.dart';
import 'package:my_cv_mobile_app/Controller/cart_controller.dart';
import 'package:my_cv_mobile_app/Controller/misclleanous_controller.dart';
import 'package:my_cv_mobile_app/Controller/tap_controller.dart';
import 'package:my_cv_mobile_app/storage/shared_preference.dart';

import 'screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferenceStorage.init();
  Get.put(CartController());
  Get.put(TapController());
  Get.put(CalcController());
  Get.put(MisclleanousController());
  runApp(const CVApp());
}

class CVApp extends StatelessWidget {
  const CVApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      darkTheme: ThemeData.light(),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
