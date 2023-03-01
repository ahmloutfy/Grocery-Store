import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../utilities/constants.dart';

class AndroidElevatedButton extends StatefulWidget {
  const AndroidElevatedButton({Key? key}) : super(key: key);

  @override
  State<AndroidElevatedButton> createState() => _AndroidElevatedButtonState();
}

class _AndroidElevatedButtonState extends State<AndroidElevatedButton> {
  Future<void> openMobileImagePicker() async {
    final XFile? pickedMobileImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedMobileImage != null) {
      setState(() {
        ImageFiles.mobileImage = File(pickedMobileImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        openMobileImagePicker();
      },
      child: const Text('Add Product Image'),
    );
  }
}
