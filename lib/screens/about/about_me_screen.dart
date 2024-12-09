import 'package:flutter/material.dart';

class AboutMeScreen extends StatefulWidget {
  const AboutMeScreen({super.key});

  @override
  State<AboutMeScreen> createState() => _AboutMeScreenState();
}

class _AboutMeScreenState extends State<AboutMeScreen> {
  final List<String> imagePaths = [
    'assets/images/mypic.jpg',
    'assets/images/mypic.jpg',
    'assets/images/mypic.jpg',
    'assets/images/mypic.jpg',
    'assets/images/mypic.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8),
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            const ListTile(
              title: Text(
                'hello,',
                style: TextStyle(fontSize: 12),
              ),
              subtitle: Text(
                'WELCOME',
                style: TextStyle(fontSize: 17),
              ),
              trailing: Icon(Icons.notifications, color: Colors.blue),
            ),
            const SizedBox(height: 5),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.black12,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "your current balance",
                          style: TextStyle(fontSize: 10),
                        ),
                        Text("RS:101198.00", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                  Icon(Icons.add_circle, size: 30, color: Colors.blue),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 110,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blue),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.send, size: 15, color: Colors.white),
                        SizedBox(height: 10),
                        Text(
                          'Send',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 110,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.purple),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.card_membership,
                            size: 15, color: Colors.white),
                        SizedBox(height: 10),
                        Text(
                          'Card',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 110,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.orange),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.grid_view, size: 15, color: Colors.white),
                        SizedBox(height: 10),
                        Text(
                          'More',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                imagePaths.length,
                (index) => Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black54,
                            width: 2,
                          )),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(imagePaths[index]),
                        backgroundColor: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Emanuel",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            const ListTile(
              title: Text(
                'Recent activity',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              trailing: Text('See all',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
            ),
            const SizedBox(height: 10),
            const ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text(
                'Shopping Bills',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                '02 oct 1200',
                style: TextStyle(fontSize: 10),
              ),
              trailing: Text('5',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
            ),
            const SizedBox(height: 10),
            const ListTile(
              leading: Icon(Icons.store_mall_directory),
              title: Text(
                'Clothing Bills',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                '02 oct 1200',
                style: TextStyle(fontSize: 10),
              ),
              trailing: Text('Rs:5.0',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
            ),
            const SizedBox(height: 10),
            const ListTile(
              leading: Icon(Icons.tiktok),
              title: Text(
                'Tiktok Product',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                '02 oct 1200',
                style: TextStyle(fontSize: 10),
              ),
              trailing: Text('5.0',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
            ),
            const SizedBox(height: 10),
            const ListTile(
              leading: Icon(Icons.no_drinks_rounded),
              title: Text(
                'Liquior bills',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                '02 oct 1200',
                style: TextStyle(fontSize: 10),
              ),
              trailing: Text('5',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
            ),
          ],
        ),
      ),
    );
  }
}
