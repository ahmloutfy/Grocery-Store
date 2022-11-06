import 'package:flutter/material.dart';
import 'package:grocery_store/screens/grocery_home.dart';
import 'package:grocery_store/utilities/scroll_behavior.dart';

void main() {
  runApp(const GroceryStore());
}

class GroceryStore extends StatelessWidget {
  const GroceryStore({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      home: const GroceryPage(),
    );
  }
}

// 7/11/2022
