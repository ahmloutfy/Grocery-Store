import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_store/utilities/constants.dart';
import 'package:grocery_store/utilities/grocery_text_field.dart';

import '../models/products_cards.dart';

class GroceryPage extends StatelessWidget {
  const GroceryPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Grocery',
                        style: kTitleTextStyle,
                      ),
                    ),
                    const Spacer(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(
                        'images/apple.jpg',
                        width: 46.0,
                        height: 46.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(children: [
                  GroceryTextField.groceryTextField(
                    groceryText: 'Search...',
                  ),
                  const SizedBox(width: 5.0),
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      color: kLightGrey,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SvgPicture.asset(
                        'images/funnel.svg',
                        semanticsLabel: 'Funnel',
                        color: kDarkGrey,
                      ),
                    ),
                  ),
                ]),
                const SizedBox(height: 10.0),
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image.asset(
                        'images/lettuce.webp',
                        height: 150.0,
                        width: 450.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        children: [
                          Text(
                            'Get Up To',
                            style: kGreenTitleStyle.copyWith(
                              fontSize: 20.0,
                            ),
                          ),
                          Text(
                            '%10 off',
                            style: kGreenTitleStyle.copyWith(
                              fontSize: 40.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(
                    children: const [
                      Text(
                        'Fruits',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      TextButton(
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
                ),
                SizedBox(
                  height: 215,
                  width: double.infinity,
                  child: GroceryCard.groceryCart(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
