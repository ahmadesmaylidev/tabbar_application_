import 'package:flutter/material.dart';
import 'package:tabbar_application_/screen/home_screen.dart';

void main() {
  runApp(const Application());
}

//in this part we well learn how to create to Tabs and give that tabs content
//the steps are :
//1 : create tab widget and give tab icon
//2 : create tabview widget and give the content
//3 : create tabcontroller and give it to both ( tab widget and tab view)
// 3:1 inheritance  class of state with SingleTickerProviderStateMixin
// 3:2  define the controller vsync : this
// 3:3 give it to both widget
class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
