import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_cv_mobile_app/Controller/calc_controller.dart';


class CalcScreen extends StatefulWidget {
  const CalcScreen({super.key});

  @override
  State<CalcScreen> createState() => _CalcScreenState();
}

class _CalcScreenState extends State<CalcScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              Get.find<CalcController>().addition();
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '+',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
              onPressed: () {
                Get.find<CalcController>().subtraction();
              },
              child: const Text(
                "-",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
              onPressed: () {
                Get.find<CalcController>().multiply();
              },
              child: const Text(
                "*",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
              onPressed: () {
                Get.find<CalcController>().division();
              },
              child: const Text(
                "/",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
        ],
      ),
      body: GetBuilder<CalcController>(
        builder: (calc) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                TextField(
                  controller: calc.firstnum,
                  decoration:
                      const InputDecoration(hintText: "Enter first number"),
                ),
                TextField(
                  controller: calc.secondnum,
                  decoration:
                      const InputDecoration(hintText: "Enter second number"),
                ),
                Text(
                  "${calc.total}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
