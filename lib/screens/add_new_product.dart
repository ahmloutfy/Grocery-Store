import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../models/products_list.dart';
import '../utilities/constants.dart';
import 'grocery_home.dart';

class AddNewProduct extends StatefulWidget {
  final Product? product;

  const AddNewProduct({Key? key, this.product}) : super(key: key);

  @override
  State<AddNewProduct> createState() => _AddNewProductState();
}

class _AddNewProductState extends State<AddNewProduct> {
  String? dropdownValue = 'Fruits';


  Future<void> openMobileImagePicker() async {
    final XFile? mobileImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (mobileImage != null) {
      setState(() {
        widget.product!.mobileImage = File(mobileImage.path);
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
                                  setState(() {
                                    openMobileImagePicker();
                                  });
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
                                    backgroundImage:
                                    (widget.product?.mobileImage) != null ? Image.file(widget.product!.mobileImage,
                                        fit: BoxFit.fill)
                                        .image : Image.file(File('images/grocery.png'),
                                        fit: BoxFit.fill).image,

                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                onSaved: (value) {
                                  if (value != null) {
                                    setState(() {
                                      widget.product!.productName = value;
                                    });
                                  } else {
                                    value = 'No Product';
                                  }
                                },
                                decoration: const InputDecoration(
                                    labelText: 'Product Name',
                                    hintText: 'Add Product Name'),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                onSaved: (value) {
                                  if (value != null) {
                                    setState(() {
                                      widget.product!.productPrice = value as double?;
                                    });
                                  } else {
                                    value = 'No Price';
                                  }
                                },
                                decoration: const InputDecoration(
                                    labelText: 'Product Price',
                                    hintText: 'Add Product Price'),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              DropdownButton<String>(
                                value: dropdownValue,
                                items: productCategory,
                                // productCategory
                                //     .map(
                                //       (item) => DropdownMenuItem<String>(
                                //         value: item,
                                //         child: Text(
                                //           item,
                                //         ),
                                //       ),
                                //     )
                                //     .toList(),
                                onChanged: (item) =>
                                    setState(() => dropdownValue = item),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(

                                  onPressed: () {
                                    if (widget.product?.productName != null && widget.product!.productPrice != null) {
                                      setState(() {
                                        listOfProducts.add({
                                          'productImage': widget.product?.mobileImage,
                                          'productName': widget.product?.productName,
                                          'productPrice': widget.product?.productPrice,
                                          'productCategory': dropdownValue,
                                        });
                                      });
                                    } else {
                                      setState(() {
                                        listOfProducts.add({
                                          'productImage': File('images/grocery.png'),
                                          'productName': 'Grocery Store',
                                          'productPrice': 00.00,
                                          'productCategory': dropdownValue,
                                        });
                                      });
                                    }

                                    // Update the state to reflect the new list of products
                                    setState(() {
                                      listOfProducts.map((product) => Product.fromMap(product)).toList();
                                    });
                                  }



                                  ,

                                   child: const Text('Add Product!'))
                              ,

                              const SizedBox(
                                height: 20,
                              ),

                              ElevatedButton(onPressed: () {

                                setState(() {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const GroceryPage(),),);
                                });
                              }, child: const Text('Go To Hompage'),),

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
