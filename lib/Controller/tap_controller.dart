import 'package:get/get_state_manager/get_state_manager.dart';

class TapController extends GetxController {
  int value = 0;

  void increment() {
    if (value >= 10) return;
    value = value + 2;
    update();
  }

  void decrement() {
    if (value <= 0) return;
    value = value - 2;
    update();
  }
}
