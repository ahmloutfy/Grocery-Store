import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_web/image_picker_web.dart';
import '../utilities/constants.dart';
import 'package:flutter/foundation.dart';

class AddNewProduct extends StatefulWidget {
  const AddNewProduct({Key? key}) : super(key: key);

  @override
  State<AddNewProduct> createState() => _AddNewProductState();
}

class _AddNewProductState extends State<AddNewProduct> {
  File? _mobileImage;
  final _mobilePicker = ImagePicker();
  File? _webImage;

  Future<void> _openMobileImagePicker() async {
    final XFile? pickedMobileImage =
        await _mobilePicker.pickImage(source: ImageSource.gallery);
    if (pickedMobileImage != null) {
      setState(() {
        _mobileImage = File(pickedMobileImage.path);
      });
    }
  }

  Future<void> _openWebImagePicker() async {
    final XFile? pickedWebImage = await ImagePickerWeb.getImageAsBytes();
    if (pickedWebImage != null) {
      setState(() {
        _webImage = File(pickedWebImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const Text(
                    'Add New Product To The Market',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 30,
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Form(
                          key: UniversalKey.formKey,
                          child: Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  if (Platform.isAndroid) {
                                    _openMobileImagePicker();
                                  } else {
                                    _openWebImagePicker();
                                  }
                                },
                                child: const Text('Add Product Image'),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 120,
                                width: 120,
                                decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 15,
                                      color: Colors.grey,
                                    )
                                  ],
                                  shape: BoxShape.circle,
                                ),
                                child: CircleAvatar(
                                  backgroundImage: (Platform.isAndroid &&
                                          _mobileImage != null)
                                      ? Image.file(_mobileImage!,
                                              fit: BoxFit.fill)
                                          .image
                                      : (kIsWeb && _webImage != null)
                                          ? Image.file(_webImage!,
                                                  fit: BoxFit.fill)
                                              .image
                                          : Image.asset('images/no_image.png')
                                              .image,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
