import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).cardColor,
                        border: Border.all(
                            color: Theme.of(context).colorScheme.background,
                            width: 3),
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Yin Chantha"),
                        SizedBox(
                          height: 6,
                        ),
                        Text("yinchantha@gmail.com")
                      ],
                    )
                  ],
                ),
                const Divider(
                  thickness: 1,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("General"),
                const SizedBox(
                  height: 10,
                ),
                CustomList(
                    imagesPath: "assets/images/order_svg.png",
                    text: "All Order",
                    function: () {}),
                CustomList(
                    imagesPath: "assets/images/wishlist_svg.png",
                    text: "Wishlist",
                    function: () {}),
                CustomList(
                    imagesPath: "assets/images/address.png",
                    text: "Address",
                    function: () {}),
                const SizedBox(
                  height: 6,
                ),
                const Divider(
                  thickness: 1,
                ),
                const SizedBox(
                  height: 6,
                ),
                const Text("Setting"),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Center(
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {},
              icon: const Icon(
                Icons.login,
                color: Colors.black,
              ),
              label: const Text(
                "Login",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomList extends StatelessWidget {
  const CustomList({
    super.key,
    required this.imagesPath,
    required this.text,
    required this.function,
  });
  final String imagesPath, text;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        function();
      },
      title: Text(text),
      leading: Image.asset(
        imagesPath,
        height: 34,
      ),
      trailing: const Icon(IconlyLight.arrowRight2),
    );
  }
}
