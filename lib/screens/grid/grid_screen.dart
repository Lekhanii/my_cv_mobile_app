import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controller/cart_controller.dart';
import '../state_management/cart_screen.dart';

class GridScreen extends StatelessWidget {
  const GridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {
                  //naviagte to cart screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CartScreen(),
                    ),
                  );
                },
                icon: const Icon(Icons.add_shopping_cart_outlined),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 10,
                  child: GetBuilder<CartController>(
                    builder: (cart) {
                      return Text(
                        cart.carts.length.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) => ClipRRect(
          child: Banner(
            location: BannerLocation.topStart,
            message: "${index + 1} Rank",
            color: Colors.green,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black,
                  width: 0.2,
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: CachedNetworkImageProvider(
                      "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                    ),
                  ),
                  Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  //percentage with big with fontsize color change
                  Text(
                    "77.8%",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
