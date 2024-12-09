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

  String selectedGender = 'Male';
  void selectGender(String value) {
    selectedGender = value;
    update();
  }

  List<String> selectedfruits = [];
  void changefruit(String value) {
    if (selectedfruits.contains(value)) {
      selectedfruits.remove(value);
    } else {
      selectedfruits.add(value);
    }
    update();
  }

  bool isdarkmode = false;
  bool islightmode = true;
  void toggleSwitch(bool value) {
    {
      if (value) {
        isdarkmode = true;
        islightmode = false;
      } else {
        isdarkmode = false;
        islightmode = false;
      }
    }
    update();
  }

  bool isFavoriteSelected = false;
  bool isStarSelected = true;
  void toggleFavourite() {
    isFavoriteSelected = !isFavoriteSelected;
    update();
  }

  void toggleStar() {
    isStarSelected = !isStarSelected;
    update();
  }
}
