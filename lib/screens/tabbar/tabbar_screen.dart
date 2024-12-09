import 'package:flutter/material.dart';

class TabbarScreen extends StatelessWidget {
  const TabbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text(
            ' Tabbar',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          bottom: const TabBar(
            isScrollable: true,
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.search),
                text: "Search",
              ),
              Tab(
                icon: Icon(Icons.videocam_sharp),
                text: "Videos",
              ),
              Tab(
                icon: Icon(Icons.add),
                text: "Add",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.deepPurple[100],
              child: const Center(
                child: Text(
                  "Welcome to Home",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              color: Colors.teal[100],
              child: const Center(
                child: Text(
                  "Explore the Search",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              color: Colors.orange[100],
              child: const Center(
                child: Text(
                  "Watch Videos",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              color: Colors.green.shade100,
              child: const Center(
                child: Text(
                  "Add",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
