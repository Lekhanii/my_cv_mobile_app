import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_cv_mobile_app/Controller/misclleanous_controller.dart';

class MisclleanousScreen extends StatefulWidget {
  const MisclleanousScreen({super.key});

  @override
  State<MisclleanousScreen> createState() => _MisclleanousScreenState();
}

class _MisclleanousScreenState extends State<MisclleanousScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<MisclleanousController>(builder: (misc) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //radio

            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Gender",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            ListView.builder(
              shrinkWrap: true,
              itemCount: misc.genders.length,
              itemBuilder: (BuildContext context, int index) {
                return RadioListTile(
                  groupValue: misc.genders[index],
                  value: misc.selectedGender,
                  onChanged: (value) => misc.selectGender(value.toString()),
                  title: Text("${misc.genders[index]}"),
                );
              },
            ),

            //checkbox

            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Fruits",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: misc.fruits.length,
              itemBuilder: (BuildContext context, int index) {
                return CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  value: misc.selectedfruits.contains(misc.fruits[index]),
                  onChanged: (value) =>
                      misc.changefruit(misc.fruits[index].toString()),
                  title: Text("${misc.fruits[index]}"),
                );
              },
            ),

            //switch
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("Switch",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            SwitchListTile(
              title: const Text(" Mode"),
              value: misc.isdarkmode,
              onChanged: (value) {
                misc.toggleSwitch(value);
              },
              activeColor: Colors.green,
              inactiveThumbColor: Colors.grey,
              inactiveTrackColor: Colors.black26,
            ),

            //favourite
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Favourite',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            GestureDetector(
              onTap: misc.toggleFavourite,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  misc.isFavoriteSelected
                      ? Icons.favorite
                      : Icons.favorite_border,
                  size: 50.0,
                  color: misc.isFavoriteSelected ? Colors.red : Colors.grey,
                ),
              ),
            ),
            GestureDetector(
              onTap: misc.toggleStar,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  misc.isStarSelected ? Icons.star : Icons.star_border,
                  size: 50.0,
                  color: misc.isStarSelected ? Colors.yellow : Colors.grey,
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
