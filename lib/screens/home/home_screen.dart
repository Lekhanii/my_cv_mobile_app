import 'package:flutter/material.dart';
import 'package:my_cv_mobile_app/screens/New/marksheet_screen.dart';
import 'package:my_cv_mobile_app/screens/New/new_screen.dart';
import 'package:my_cv_mobile_app/screens/about/about_me_screen.dart';
import 'package:my_cv_mobile_app/screens/animation/animation_screen.dart';
import 'package:my_cv_mobile_app/screens/api/api_screen.dart';
import 'package:my_cv_mobile_app/screens/background_image/background_image_screen';
import 'package:my_cv_mobile_app/screens/calc/calc_screen.dart';
import 'package:my_cv_mobile_app/screens/course/course_screen.dart';
import 'package:my_cv_mobile_app/screens/morphism/glassmorphism_screen.dart';
import 'package:my_cv_mobile_app/screens/morphism/neumorphism_screen.dart';
import 'package:my_cv_mobile_app/screens/order/order_app_screen.dart.dart';
import 'package:my_cv_mobile_app/screens/login/login_screen.dart';
import 'package:my_cv_mobile_app/screens/grid/grid_screen.dart';
import 'package:my_cv_mobile_app/screens/misclleanous/misclleanous_screen.dart';
import 'package:my_cv_mobile_app/screens/page_builder/page_builder_screen%20.dart';
import 'package:my_cv_mobile_app/screens/registration_form/register_screen.dart';
import 'package:my_cv_mobile_app/screens/tabbar/tabbar_screen.dart';
import 'package:my_cv_mobile_app/screens/tapping/tapping_screen.dart';
import 'package:my_cv_mobile_app/screens/url_launcher/url_launcher_screen.dart';

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
                      height: 500,
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
                                      child: const Text("Marksheet"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const StateMgmtScreen(),
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
                                      child: const Text("Calculator"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const MisclleanousScreen(),
                                          ),
                                        );
                                      },
                                      child: const Text("Misclleanous"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const AnimationScreen(),
                                          ),
                                        );
                                      },
                                      child: const Text("Animation"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const TabbarScreen(),
                                          ),
                                        );
                                      },
                                      child: const Text("Tabbar"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const PageBuilderScreen(),
                                          ),
                                        );
                                      },
                                      child: const Text("Pagebuilder"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const CourseDesignScreen()),
                                        );
                                      },
                                      child: const Text("Courses"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const OrderAppScreen()),
                                        );
                                      },
                                      child: const Text("Food"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const BackgroundImageScreen(),
                                          ),
                                        );
                                      },
                                      child: const Text("Background Image"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const UrlLauncherScreen(),
                                          ),
                                        );
                                      },
                                      child: const Text("Urlscreen"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const NeumorphismScreen(),
                                          ),
                                        );
                                      },
                                      child: const Text("Neumorphic button "),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const GlassmorphismScreen(),
                                          ),
                                        );
                                      },
                                      child:
                                          const Text("GlassMorphism button "),
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
