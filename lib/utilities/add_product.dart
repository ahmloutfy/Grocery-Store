import 'package:flutter/material.dart';
import 'package:grocery_store/utilities/constants.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  bool isAdded = true;
  Color buttonColor = kDarkGreen;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: GestureDetector(
        child: Ink(
          child: InkWell(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: isAdded ? kDarkGreen : kLightGrey,
              ),
              height: 40.0,
              width: 40.0,
              child: const Padding(
                padding: EdgeInsets.fromLTRB(0, 1, 0, 2.5),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
            onTap: () => setState(() {
              isAdded = !isAdded;
            }),
          ),
        ),
      ),
    );
  }
}
