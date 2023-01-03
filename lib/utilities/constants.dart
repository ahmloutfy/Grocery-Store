import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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

File? galleryFile = File(PickImageFromGallery.pickImageFromGallery().path);

class PickImageFromGallery {
  static pickImageFromGallery() async {
    await ImagePicker().pickImage(source: ImageSource.gallery);
  }
}
