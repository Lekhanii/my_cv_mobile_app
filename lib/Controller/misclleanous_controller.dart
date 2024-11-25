import 'package:get/get.dart';

class MisclleanousController extends GetxController {
  List<String> genders = [
    'Male',
    'Female',
    'Others',
    'rather not say',
  ];

  List<String> fruits = [
    'Apple',
    'Banana',
    'Cherry',
  ];

  List<String> selectedfruits = [];

  String selectedGender = 'Male';

  void selectGender(String value) {
    selectedGender = value;
    update();
  }

  void changeFavourite() {}

  void changefruit(String value) {
    if (selectedfruits.contains(value)) {
      selectedfruits.remove(value);
    } else {
      selectedfruits.add(value);
    }
    update();
  }

  void switchValue(bool value) {}

  selectedFruits() {}
}
