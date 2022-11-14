import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_store/models/product_cards_column.dart';
import 'package:grocery_store/utilities/constants.dart';
import 'package:grocery_store/utilities/grocery_text_field.dart';

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
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 1, 0),
                  child: Row(
                    children: [
                      const Text(
                        'Grocery',
                        style: kTitleTextStyle,
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
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: const Color(0xFFE9F9F2),
                  ),
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: -150,
                        right: -10,
                        height: 290,
                        width: 350,
                        child: Image.asset(
                          '${kProductsImagesAsset}lettuce.png',
                        ),
                      ),
                      Positioned(
                        top: 30,
                        left: 25,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                ),
                const ProductCardsColumn(
                  groceryType: 'Fruits',
                ),
                const ProductCardsColumn(
                  groceryType: 'Vegetables',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
