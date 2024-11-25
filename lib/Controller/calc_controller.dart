import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CalcController extends GetxController {
  final firstnum = TextEditingController();
  final secondnum = TextEditingController();
  var total = 0.0;

  void addition() {
    total = double.parse(firstnum.text) + double.parse(secondnum.text);
    update();
  }

  void subtraction() {
    total = double.parse(firstnum.text) - double.parse(secondnum.text);
    update();
  }

  void multiply() {
    total = double.parse(firstnum.text) * double.parse(secondnum.text);
    update();
  }

  void division() {
    total = double.parse(firstnum.text) / double.parse(secondnum.text);
    update();
  }
}
