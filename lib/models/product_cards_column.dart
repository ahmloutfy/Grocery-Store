import 'package:flutter/material.dart';
import 'package:grocery_store/utilities/constants.dart';

class ProductCardsRow extends StatelessWidget {
  const ProductCardsRow({Key? key, required this.groceryType})
      : super(key: key);

  final String? groceryType;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            groceryType!,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Spacer(),
        const TextButton(
            onPressed: null,
            child: Text(
              'View More',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: kDarkGreen,
              ),
            )),
      ],
    );
  }
}
