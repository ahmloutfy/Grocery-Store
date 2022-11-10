import 'package:flutter/material.dart';
import 'package:grocery_store/utilities/constants.dart';

class GroceryTextField {
  static groceryTextField({
    String? groceryText,
  }) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 16),
            prefixIcon: const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Icon(
                Icons.search,
                size: 30.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: kLightGrey),
              borderRadius: BorderRadius.circular(21.0),
            ),
            filled: true,
            fillColor: kLightGrey,
            hintText: groceryText,
          ),
        ),
      ),
    );
  }
}
