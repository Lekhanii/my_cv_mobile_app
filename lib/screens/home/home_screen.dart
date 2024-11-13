import 'package:flutter/material.dart';
import 'package:my_cv_mobile_app/screens/New/new_screen.dart';
import 'package:my_cv_mobile_app/screens/about/about_me_screen.dart';
import 'package:my_cv_mobile_app/screens/grid/grid_screen.dart';
import 'package:my_cv_mobile_app/screens/registration_form/register_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Professors Profiles",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Searching");
                  },
                  child: const Text("Search"),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                        elevation: 0,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AboutMeScreen(),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        width: double.infinity,
                        height: 300,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/images/mypic.jpg',
                                width: 100,
                                height: 100,
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Asst. Prof Er.Rajesh Kamar",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                Text("Artificial Intelligence",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w200,
                                      fontSize: 15,
                                      color: Colors.grey,
                                    )),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.blue,
                                    ),
                                    Text("Pokhara, Nepal"),
                                  ],
                                ),
                                SizedBox(height: 10),
                                ElevatedButton.icon(
                                  onPressed: () {},
                                  label: Text("Booked Now"),
                                  icon: Icon(Icons.book_rounded),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                RegisterScreen(),
                                          ),
                                        );
                                      },
                                      child: Text("Register"),
                                    ),
                                    SizedBox(width: 10),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => GridScreen(),
                                          ),
                                        );
                                      },
                                      child: Text("Grid"),
                                    ),
                                    SizedBox(width: 10),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => NewScreen(),
                                          ),
                                        );
                                      },
                                      child: Text("New page"),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

// class AboutScreen extends StatelessWidget {
//   const AboutScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("About Professor"),
//       ),
//       body: Center(
//         child: Text(
//           "Details about the professor will be displayed here.",
//           style: TextStyle(fontSize: 18),
//         ),
//       ),
//     );
//   }
// }
