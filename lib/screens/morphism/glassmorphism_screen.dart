import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GlassmorphismScreen extends StatelessWidget {
  const GlassmorphismScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange.shade300,
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://t4.ftcdn.net/jpg/08/36/09/53/360_F_836095361_u4Y9ODZYeWFJ3p3KXuWYkCOH1ZYT64B7.jpg'),
                fit: BoxFit.cover)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(40),
                border: Border.all(width: 2, color: Colors.white30),
              ),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HI, \nCUTIE PIE',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 40,
                          color: Colors.white60),
                    ),
                    SizedBox(height: 5),
                    Icon(
                      Icons.favorite_sharp,
                      color: Colors.red,
                      size: 100,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
