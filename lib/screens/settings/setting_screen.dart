import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Settings',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                IconButton(
                  icon: const Icon(Icons.search, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: const [
                Text(
                  'Account',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                ListTile(
                  title:
                      Text('Change Password', style: TextStyle(fontSize: 16)),
                ),
                ListTile(
                  title: Text(
                    'Privacy Settings',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Divider(),
                Text(
                  'About',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                ListTile(
                  title: Text('Terms of service'),
                ),
                ListTile(
                  title: Text('Privacy Policy'),
                ),
                ListTile(
                  title: Text('App version'),
                  subtitle: Text('1.0.1'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
