import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NeumorphismScreen extends StatefulWidget {
  const NeumorphismScreen({super.key});

  @override
  State<NeumorphismScreen> createState() => _NeumorphismScreenState();
}

class _NeumorphismScreenState extends State<NeumorphismScreen> {
  bool isElevated = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isElevated = !isElevated;
            });
          },
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: isElevated
                      ? [
                          const BoxShadow(
                              color: Colors.black87,
                              offset: Offset(-3, -3),
                              blurRadius: 15,
                              spreadRadius: 1),
                          const BoxShadow(
                              color: Colors.white,
                              offset: Offset(6, 6),
                              blurRadius: 15,
                              spreadRadius: 1)
                        ]
                      : null),
              height: 200,
              width: 200,
              child: Center(
                child: Icon(
                  isElevated
                      ? FontAwesomeIcons.heartCircleCheck
                      : FontAwesomeIcons.heartCircleBolt,
                  size: 100,
                  color: isElevated ? Colors.red : Colors.grey[400],
                ),
              )),
        ),
      ),
    );
  }
}
