import 'package:flutter/material.dart';
import 'package:grocery_store/models/products_cards.dart';
import 'package:grocery_store/utilities/constants.dart';

class ProductCardsColumn extends StatelessWidget {
  const ProductCardsColumn({Key? key, required this.groceryType})
      : super(key: key);

  final String? groceryType;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
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
        ),
        SizedBox(
          height: 215,
          width: double.infinity,
          child: GroceryCard.groceryCart(),
        ),
      ],
    );
  }
}
