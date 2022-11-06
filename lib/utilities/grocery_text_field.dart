import 'package:flutter/material.dart';
import 'package:grocery_store/utilities/constants.dart';

class GroceryTextField {
  static groceryTextField({
    String? groceryText,
  }) {
    return Expanded(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 30.0,
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
          ),
        ),
      ),
    );
  }
}
