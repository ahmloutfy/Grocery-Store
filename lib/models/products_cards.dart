import 'package:flutter/material.dart';
import 'package:grocery_store/utilities/constants.dart';

class GroceryCard {
  static Widget groceryCart() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return ClipRect(
          child: Container(
            clipBehavior: Clip.none,
            width: 140.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.black,
                ),
              ],
            ),
            margin: const EdgeInsets.all(10.0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
              child: Column(
                children: [
                  Image.asset(
                    '${kProductsImagesAsset}bananas.png',
                    height: 80.0,
                    width: 90.0,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Banana',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Organic',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              height: 1.5,
                              color: kDarkGrey,
                              fontSize: 12.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        '\$4.99',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.5),
                            color: kDarkGreen,
                          ),
                          height: 40.0,
                          width: 40.0,
                          child: const IconButton(
                            padding: EdgeInsets.fromLTRB(0, 1, 0, 2.5),
                            onPressed: null,
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
