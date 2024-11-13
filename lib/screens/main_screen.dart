import 'package:flutter/material.dart';
import 'package:my_cv_mobile_app/screens/about/about_me_screen.dart';
import 'package:my_cv_mobile_app/screens/home/home_screen.dart';
import 'package:my_cv_mobile_app/screens/profile/profile_screen.dart';
import 'package:my_cv_mobile_app/screens/settings/setting_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Color> colors = [
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.black,
    Colors.red,
    Colors.grey,
    Colors.pink,
    Colors.black,
    Colors.red,
    Colors.grey,
    Colors.pink,
  ];

  List<Widget> data = [
    const HomeScreen(),
    const AboutMeScreen(),
    const SettingScreen(),
    const ProfileScreen(),
  ];

  Color? selectedColor;
  int? selectedNumber;
  int? currentIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Courses'),
        backgroundColor: const Color.fromARGB(255, 26, 70, 232),
        actions: [
          IconButton(
            onPressed: () {
              print("help");
            },
            icon: const Icon(Icons.question_mark_rounded),
          )
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex ?? 0,
        onTap: (value) {
          setState(() {
            currentIndex = value ?? 0;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.align_vertical_top_outlined), label: "About"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        ],
      ),

      body: Center(child: data[currentIndex ?? 0]),

      // backgroundColor: selectedColor ?? Colors.white,
      // body: Column(
      //   children: [
      //     const SizedBox(height: 20),
      //     SingleChildScrollView(
      //       scrollDirection: Axis.horizontal,
      //       child: Row(
      //         children: List.generate(colors.length, (index) {
      //           return Padding(
      //             padding: const EdgeInsets.all(8.0),
      //             child: GestureDetector(
      //               onTap: () {
      //                 setState(() {
      //                   print(index);
      //                   selectedColor = colors[index];
      //                   selectedNumber = index;
      //                 });
      //               },
      //               child: CircleAvatar(
      //                 backgroundColor: colors[index],
      //                 child: Text("$index"),
      //               ),
      //             ),
      //           );
      //         }),
      //       ),
      //     ),
      //     Expanded(
      //       child: Center(
      //         child: Text(
      //           "${selectedNumber ?? "press a number"}",
      //           style:
      //               const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),

      // body: SingleChildScrollView(
      //   scrollDirection: Axis.horizontal,
      //   child: Row(
      //     children: [
      //       CircleAvatar(
      //         backgroundColor: Colors.blue,
      //         radius: 40,
      //       ),
      //       CircleAvatar(
      //         backgroundColor: Colors.black,
      //         radius: 40,
      //       ),
      //       CircleAvatar(
      //         backgroundColor: Colors.red,
      //         radius: 40,
      //       ),
      //       CircleAvatar(
      //         backgroundColor: Colors.orange,
      //         radius: 40,
      //       ),
      //       CircleAvatar(
      //         backgroundColor: Colors.grey,
      //         radius: 40,
      //       ),
      //       CircleAvatar(
      //         backgroundColor: Colors.purple,
      //         radius: 40,
      //       ),
      //       CircleAvatar(
      //         backgroundColor: Colors.blue,
      //         radius: 40,
      //       ),
      //       CircleAvatar(
      //         backgroundColor: Colors.blue,
      //         radius: 40,
      //       ),
      //       CircleAvatar(
      //         backgroundColor: Colors.blue,
      //         radius: 40,
      //       ),
      //       CircleAvatar(
      //         backgroundColor: Colors.blue,
      //         radius: 40,
      //       ),
      //     ],
      //   ),
      // )

      // body: Padding(
      //   padding: const EdgeInsets.all(8),
      //   child: Column(
      //     children: [
      //       Container(
      //         padding: EdgeInsets.all(10),
      //         width: 300,
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.end,
      //           children: [
      //             SizedBox(height: 10),
      //             Row(
      //               crossAxisAlignment: CrossAxisAlignment.end,
      //               children: [
      //                 Icon(Icons.star, color: Colors.orange),
      //                 SizedBox(width: 5),
      //                 Text(
      //                   "4.6",
      //                   style: TextStyle(
      //                     color: Colors.orange,
      //                     fontWeight: FontWeight.bold,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //             Container(
      //               decoration: BoxDecoration(
      //                 shape: BoxShape.circle,
      //                 border: Border.all(color: Colors.black, width: 4),
      //               ),
      //               child: const CircleAvatar(
      //                 radius: 50,
      //                 backgroundImage: AssetImage("assets/images/mypic.jpg"),
      //               ),
      //             ),
      //             SizedBox(height: 20),
      //             Row(
      //               children: [
      //                 Text(
      //                   'Dr.Eva Gelina',
      //                   style: TextStyle(
      //                     fontWeight: FontWeight.bold,
      //                     fontSize: 18,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //             SizedBox(height: 20),
      //             Row(
      //               children: [
      //                 Text(
      //                   'Pyschologist',
      //                   style: TextStyle(
      //                     fontWeight: FontWeight.w100,
      //                     fontSize: 15,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //             SizedBox(height: 20),
      //             Row(
      //               children: [
      //                 Icon(
      //                   Icons.location_on_outlined,
      //                   color: Colors.blue,
      //                 ),
      //                 Text("1km away"),
      //               ],
      //             ),
      //             Row(
      //               children: [
      //                 SizedBox(height: 10),
      //                 ElevatedButton.icon(
      //                   onPressed: () {},
      //                   label: Text("Contact"),
      //                   icon: Icon(Icons.call),
      //                 ),
      //               ],
      //             ),
      //           ],
      //         ),
      //         decoration: BoxDecoration(
      //           color: Colors.white,
      //           border: Border.all(color: Colors.grey, width: 1),
      //           borderRadius: BorderRadius.circular(8),
      //         ),
      //       )
      //     ],
      //   ),
      // ),

      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Column(
      //     children: [
      //       Container(
      //         padding: EdgeInsets.all(10),
      //         width: double.infinity,
      //         height: 200,
      //         child: Row(
      //           children: [
      //             ClipRRect(
      //               borderRadius: BorderRadius.circular(8),
      //               child: Image.asset("assets/images/mypic.jpg"),
      //             ),
      //             SizedBox(width: 10),
      //             Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Text(
      //                   "Anjali Shah",
      //                   style: TextStyle(
      //                     fontWeight: FontWeight.bold,
      //                     fontSize: 20,
      //                   ),
      //                 ),
      //                 Text("App Developer",
      //                     style: TextStyle(
      //                       fontWeight: FontWeight.w200,
      //                       fontSize: 15,
      //                       color: Colors.grey,
      //                     )),
      //                 SizedBox(height: 10),
      //                 Row(
      //                   children: [
      //                     Icon(Icons.star, color: Colors.orange),
      //                     Text("4.6",
      //                         style: TextStyle(
      //                           color: Colors.orange,
      //                         ))
      //                   ],
      //                 ),
      //                 SizedBox(height: 10),
      //                 Row(
      //                   children: [
      //                     Icon(
      //                       Icons.location_on_outlined,
      //                       color: Colors.blue,
      //                     ),
      //                     Text("Pokhara,Nepal"),
      //                   ],
      //                 ),
      //                 SizedBox(height: 10),
      //                 ElevatedButton.icon(
      //                   onPressed: () {},
      //                   label: Text("Contact"),
      //                   icon: Icon(Icons.call),
      //                 )
      //               ],
      //             )
      //           ],
      //         ),
      //         decoration: BoxDecoration(
      //           color: Colors.white,
      //           border: Border.all(color: Colors.grey, width: 1),
      //           borderRadius: BorderRadius.circular(8),
      //         ),
      //       )
      //     ],
      //   ),
      // ),

      // ElevatedButton(
      //     onPressed: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //             builder: (context) => SettingScreen(
      //                   name: "Anjali Shah",
      //                   color: const Color.fromARGB(255, 93, 174, 236),
      //                 )),
      //       );
      //     },
      //     child: const Text("Go to second page")),
      // const SizedBox(height: 20),

      // const Center(child: Text("Hi ")),
      // Image.asset("assets/images/mypic.jpg", width: 200, height: 200),
      // Container(
      //   //padding: const EdgeInsets.all(30),
      //   width: 200,
      //   height: 200,
      //   decoration: BoxDecoration(
      //     border: Border.all(
      //       color: Colors.pink,
      //       width: 10,
      //     ),
      //     image: const DecorationImage(
      //         image: AssetImage("assets/images/mypic.jpg")),
      //     color: const Color.fromARGB(255, 163, 49, 146),
      //     shape: BoxShape.circle,
      //   ),
      // ),
      // const SizedBox(
      //   height: 20,
      // ),
      // Center(
      //   child: Container(
      //     decoration: BoxDecoration(
      //       shape: BoxShape.circle,
      //       border: Border.all(
      //         color: Colors.black,
      //         width: 5,
      //       ),
      //     ),
      //     child: const CircleAvatar(
      //       radius: 100,
      //       backgroundImage: AssetImage(
      //         "assets/images/myphoto.jpg",
      //       ),
      //     ),
      //   ),
      // ),
      // const SizedBox(height: 50),
      // const Text(
      //   "Anjali Shah",
      //   style: TextStyle(
      //       fontSize: 25,
      //       color: Colors.green,
      //       fontWeight: FontWeight.bold,
      //       fontStyle: FontStyle.italic),
      // ),
      // const Text("Mobile App Developer",
      //     style: TextStyle(
      //       color: Colors.grey,
      //     )),
      // const SizedBox(height: 30),

//         body: Container(
//           margin: const EdgeInsets.all(20),
//           width: double.infinity,
//           height: 200,
//           decoration: BoxDecoration(
//               color: Colors.blue,
//               borderRadius: BorderRadius.circular(10),
//               border: Border.all(
//                   color: const Color.fromARGB(255, 181, 213, 17), width: 10)),
//           child: Center(
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text("My Bio"),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       print("pressed");
//                     },
//                     child: const Text("hey!"),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ));
//   }
// }
    );
  }
}
