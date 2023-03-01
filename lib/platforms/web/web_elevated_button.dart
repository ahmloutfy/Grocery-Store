import 'dart:io';

import 'package:flutter/foundation.dart' show Uint8List;
import 'package:flutter/material.dart';
import 'package:image_picker_web/image_picker_web.dart';

import '../../utilities/constants.dart';

class WebElevatedButton extends StatefulWidget {
  const WebElevatedButton({Key? key}) : super(key: key);

  @override
  State<WebElevatedButton> createState() => _WebElevatedButtonState();
}

class _WebElevatedButtonState extends State<WebElevatedButton> {
  Future<void> openWebImagePicker() async {
    final Uint8List? pickedWebImage = await ImagePickerWeb.getImageAsBytes();
    if (pickedWebImage != null) {
      setState(() {
        ImageFiles.webImage = File.fromRawPath(pickedWebImage) as Uint8List?;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        openWebImagePicker();
      },
      child: const Text('Add Product Image'),
    );
  }
}
