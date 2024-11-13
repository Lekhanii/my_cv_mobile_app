import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Container(
        child: ListView(padding: const EdgeInsets.all(8), children: [
          ListTile(
            title: Text(
              'Account Center',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text('Anshu Anshu'),
            leading: Icon(Icons.person, color: Colors.blue),
            trailing: Icon(Icons.arrow_right_sharp, color: Colors.blue),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Notification',
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(Icons.notifications, color: Colors.blue),
            trailing: Icon(Icons.arrow_right_sharp, color: Colors.blue),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Language',
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(Icons.language, color: Colors.blue),
            trailing: Icon(Icons.arrow_right_sharp, color: Colors.blue),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Order and Payment',
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(Icons.payment, color: Colors.blue),
            trailing: Icon(Icons.arrow_right_sharp, color: Colors.blue),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Help',
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(Icons.help, color: Colors.blue),
            trailing: Icon(Icons.arrow_right_sharp, color: Colors.blue),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Privacy Center',
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(Icons.private_connectivity, color: Colors.blue),
            trailing: Icon(Icons.arrow_right_sharp, color: Colors.blue),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Account Status',
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(Icons.account_box, color: Colors.blue),
            trailing:
                Icon(Icons.arrow_circle_down_outlined, color: Colors.blue),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Logout',
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(Icons.logout, color: Colors.blue),
          ),
          Divider(),
          ListTile(
            title: Text(
              'About',
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(Icons.all_inbox_outlined, color: Colors.blue),
            trailing:
                Icon(Icons.arrow_circle_down_outlined, color: Colors.blue),
          ),
        ]),
      ),
    );
  }
}
