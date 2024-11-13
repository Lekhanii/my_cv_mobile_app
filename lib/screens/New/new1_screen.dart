import 'package:flutter/material.dart';

class New1Screen extends StatefulWidget {
  const New1Screen({super.key});

  @override
  State<New1Screen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<New1Screen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});
}
