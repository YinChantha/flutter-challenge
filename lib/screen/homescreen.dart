import 'package:dark_light_mode/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "Dark & Light Mode!",style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          SwitchListTile(
            title:Text(themeProvider.getIsDarkTheme ? "Dark Mode" : "Light Mode"),
            value: themeProvider.getIsDarkTheme,
            onChanged: (value) {
              themeProvider.setDarkTheme(themeValue: value);
            },
          ),
        ]),
      ),
    );
  }
}