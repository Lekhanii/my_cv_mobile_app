import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_cv_mobile_app/Controller/misclleanous_controller.dart';

class MisclleanousScreen extends StatelessWidget {
  const MisclleanousScreen({super.key});

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
                style: TextStyle(fontSize: 20),
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

            Text("Fruits"),
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
            //favourite
          ],
        );
      }),
    );
  }
}
