import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';

const kTitleTextStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
);

const kLightGrey = Color(0xFFF7F8FA);

const kDarkGrey = Color(0xFFC7CACD);

const kDarkGreen = Color(0xFF5DB57E);

const kProductsImagesAsset = 'images/products/';

const kFruitsImagesAsset = 'images/products/fruits/';

const kVegetablesImagesAsset = 'images/products/vegetables/';

const kGreenTitleStyle = TextStyle(
  fontWeight: FontWeight.bold,
  shadows: [
    BoxShadow(
      color: Colors.white,
      blurRadius: 5,
    ),
  ],
  color: kDarkGreen,
);

class UniversalKey {
  static final GlobalKey<FormState> formKey = GlobalKey<FormState>();
}

class ImageFiles {
  static File? mobileImage;
  static Uint8List? webImage;
}

class ProductDetails {
  static File? productImage;
  static String? productName;
  static String? productPrice;
}

OutlineInputBorder kDefaultOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(20),
);

InputDecorationTheme kDefaultInputDecorationTheme = InputDecorationTheme(
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder,
);
