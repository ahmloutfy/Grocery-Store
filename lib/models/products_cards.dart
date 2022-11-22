import 'package:flutter/material.dart';

import '../utilities/add_product.dart';
import '../utilities/constants.dart';

class GroceryCard extends StatelessWidget {
  final List listOfItems;

  const GroceryCard({Key? key, required this.listOfItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 215,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listOfItems.length,
        itemBuilder: (BuildContext context, int index) {
          return ClipRect(
            child: Container(
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
                      listOfItems[index].listOfItems,
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
                          children: [
                            Text(
                              listOfItems[index].listOfItems,
                              style: const TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              listOfItems[index].listOfItems,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
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
                        Text(
                          listOfItems[index].listOfItems,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        const AddProduct(),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
