import 'package:flutter/material.dart';
import 'package:grocery_store/models/products_list.dart';

import '../utilities/add_product.dart';
import '../utilities/constants.dart';

class ProductsListView extends StatelessWidget {
  final List productsList;

  const ProductsListView({
    Key? key,
    required this.productsList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: productsList.length,
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
                    productsList is List<Fruits>
                        ? (productsList[index] as Fruits).fruitImage!
                        : (productsList[index] as Vegetables).vegetableImage!,
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
                            productsList is List<Fruits>
                                ? (productsList[index] as Fruits).fruitName!
                                : (productsList[index] as Vegetables)
                                    .vegetableName!,
                            style: const TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            productsList is List<Fruits>
                                ? (productsList[index] as Fruits).fruitCategory!
                                : (productsList[index] as Vegetables)
                                    .vegetableCategory!,
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
                        productsList is List<Fruits>
                            ? (productsList[index] as Fruits).fruitPrice!
                            : (productsList[index] as Vegetables)
                                .vegetablePrice!,
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
    );
  }
}
