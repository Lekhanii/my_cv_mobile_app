import 'package:flutter/material.dart';
import 'package:my_cv_mobile_app/screens/New/marksheet_screen.dart';
import 'package:my_cv_mobile_app/screens/New/new_screen.dart';
import 'package:my_cv_mobile_app/screens/about/about_me_screen.dart';
import 'package:my_cv_mobile_app/screens/api/api_screen.dart';
import 'package:my_cv_mobile_app/screens/calc/calc_screen.dart';
import 'package:my_cv_mobile_app/screens/login/login_screen.dart';
import 'package:my_cv_mobile_app/screens/grid/grid_screen.dart';
import 'package:my_cv_mobile_app/screens/registration_form/register_screen.dart';
import 'package:my_cv_mobile_app/screens/tapping/tapping_screen.dart';

import '../state_management/state_mgmt_screen.dart';

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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Professors Profiles",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
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
              itemCount: 1,
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
                          builder: (context) => const AboutMeScreen(),
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
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Asst. Prof Er. Rajesh Kamar",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                const Text(
                                  "Artificial Intelligence",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.blue,
                                    ),
                                    Text("Pokhara, Nepal"),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                ElevatedButton.icon(
                                  onPressed: () {},
                                  label: const Text("Book Now"),
                                  icon: const Icon(Icons.book_rounded),
                                ),
                                const SizedBox(height: 10),
                                Wrap(
                                  spacing: 10, // Horizontal spacing
                                  runSpacing: 10, // Vertical spacing
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const RegisterScreen(),
                                          ),
                                        );
                                      },
                                      child: const Text("Register"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const GridScreen(),
                                          ),
                                        );
                                      },
                                      child: const Text("Grid"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const NewScreen(),
                                          ),
                                        );
                                      },
                                      child: const Text("New Page"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const ApiScreen(),
                                          ),
                                        );
                                      },
                                      child: const Text("API"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginScreen(),
                                          ),
                                        );
                                      },
                                      child: const Text("Login"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                MarksheetScreen(
                                              student: Student(
                                                schoolName:
                                                    'Bal Mandir Secondary School',
                                                studentName: 'Anjali Shah',
                                                className: '10',
                                                rollNumber: '5',
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                      child: Text("Marksheet"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                StateMgmtScreen(),
                                          ),
                                        );
                                      },
                                      child: const Text(
                                          "State Management with GetX"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const TappingScreen(),
                                          ),
                                        );
                                      },
                                      child: const Text("Tapping Screen"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const CalcScreen(),
                                          ),
                                        );
                                      },
                                      child: const Text("calculator"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
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
              },
            ),
          )
        ],
      ),
    );
  }
}
