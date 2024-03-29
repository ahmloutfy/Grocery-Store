import 'package:flutter/material.dart';
import 'package:grocery_store/screens/add_new_product.dart';
import 'package:grocery_store/utilities/constants.dart';
import 'package:grocery_store/utilities/scroll_behavior.dart';

void main() {
  runApp(const GroceryStore());
}

class GroceryStore extends StatelessWidget {
  const GroceryStore({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        inputDecorationTheme: kDefaultInputDecorationTheme,
      ),
      scrollBehavior: MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      home: const AddNewProduct(),
    );
  }
}

// 7/11/2022
