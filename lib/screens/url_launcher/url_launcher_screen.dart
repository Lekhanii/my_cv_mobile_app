import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class UrlLauncherScreen extends StatelessWidget {
  const UrlLauncherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Launcher().launch("https://www.google.com", context);
            },
            child: const Text("goto website"),
          ),
          ElevatedButton(
            onPressed: () {
              Launcher().launch("https://facebook.com", context);
            },
            child: const Text("goto website"),
          ),
          ElevatedButton(
            onPressed: () {
              Launcher().launch("sms:123456", context);
            },
            child: const Text("sms"),
          ),
          ElevatedButton(
            onPressed: () {
              Launcher().launch("tel:123456", context);
            },
            child: const Text("call to person"),
          ),
        ],
      ),
    );
  }
}

class Launcher {
  void launch(String url, BuildContext context) async {
    if (await canLaunchUrlString(url)) {
      launchUrl(Uri.parse(url));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Could not launch url')));
    }
  }
}
