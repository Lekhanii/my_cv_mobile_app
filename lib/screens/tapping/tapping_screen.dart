import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:my_cv_mobile_app/Controller/tap_controller.dart';

class TappingScreen extends StatefulWidget {
  const TappingScreen({super.key});

  @override
  State<TappingScreen> createState() => _TappingScreenState();
}

class _TappingScreenState extends State<TappingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              Get.find<TapController>().increment();
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.add),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              Get.find<TapController>().decrement();
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
      body: Center(
        child: GetBuilder<TapController>(
          builder: (tap) {
            return Text(
              "${tap.value}",
              style: const TextStyle(fontSize: 50),
            );
          },
        ),
      ),
    );
  }
}
