import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:navbar/screens/home_screen.dart';
import 'package:navbar/screens/profile_screen.dart';
import 'package:navbar/screens/search_screen.dart';

class Rootscreen extends StatefulWidget {
  const Rootscreen({super.key});

  @override
  State<Rootscreen> createState() => _RootscreenState();
}

class _RootscreenState extends State<Rootscreen> {
  late List<Widget> screens;
  int currentscreen = 0;
  late PageController controller;

  @override
  void initState() {
    super.initState();
    screens = const [Homescreen(), Profilescreen(), Searchscreen()];
    controller = PageController(initialPage: currentscreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: screens,
      ),
      bottomNavigationBar: NavigationBar(
          selectedIndex: currentscreen,
          elevation: 10,
          height: kBottomNavigationBarHeight,
          onDestinationSelected: (value) {
            setState(() {
              currentscreen = value;
            });
            controller.jumpToPage(currentscreen);
          },
          destinations: const [
            NavigationDestination(
                selectedIcon: Icon(IconlyBold.home),
                icon: Icon(IconlyLight.home),
                label: "Home"),
            NavigationDestination(
                selectedIcon: Icon(IconlyBold.profile),
                icon: Icon(IconlyLight.profile),
                label: "Profile"),
            NavigationDestination(
                selectedIcon: Icon(IconlyBold.search),
                icon: Icon(IconlyLight.search),
                label: "Search"),
          ]),
    );
  }
}
