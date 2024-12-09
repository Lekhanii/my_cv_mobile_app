import 'package:flutter/material.dart';

class PageBuilderScreen  extends StatelessWidget {
  const PageBuilderScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Page Builder'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),

       body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}