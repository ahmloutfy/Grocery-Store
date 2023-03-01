import 'dart:io';
import 'package:flutter/material.dart';
import '../utilities/constants.dart';

class Fruits {
  final String? fruitImage;
  final String? fruitName;
  final String? fruitCategory;
  final String? fruitPrice;

  Fruits(
      {this.fruitImage, this.fruitName, this.fruitCategory, this.fruitPrice});
}

final Fruits bananas = Fruits(
  fruitImage: '${kFruitsImagesAsset}bananas.png',
  fruitName: 'Bananas',
  fruitCategory: 'Fruits',
  fruitPrice: '\$4.99',
);

final Fruits apples = Fruits(
  fruitImage: '${kFruitsImagesAsset}apples.png',
  fruitName: 'Apples',
  fruitCategory: 'Fruits',
  fruitPrice: '\$5.00',
);

final Fruits chikku = Fruits(
  fruitImage: '${kFruitsImagesAsset}chikku.png',
  fruitName: 'Chikku',
  fruitCategory: 'Fruits',
  fruitPrice: '\$9.00',
);

final Fruits peaches = Fruits(
  fruitImage: '${kFruitsImagesAsset}peaches.png',
  fruitName: 'Peaches',
  fruitCategory: 'Fruits',
  fruitPrice: '\$12.00',
);

List<Fruits> fruitsList = [bananas, apples, chikku, peaches];

class Vegetables {
  final String? vegetableImage;
  final String? vegetableName;
  final String? vegetableCategory;
  final String? vegetablePrice;

  Vegetables(
      {this.vegetableImage,
      this.vegetableName,
      this.vegetableCategory,
      this.vegetablePrice});
}

final Vegetables okra = Vegetables(
  vegetableImage: '${kVegetablesImagesAsset}okra.jpeg',
  vegetableName: 'Okra',
  vegetableCategory: 'Vegetables',
  vegetablePrice: '\$6.99',
);

final Vegetables peas = Vegetables(
  vegetableImage: '${kVegetablesImagesAsset}peas.jpeg',
  vegetableName: 'Peas',
  vegetableCategory: 'Vegetables',
  vegetablePrice: '\$10.50',
);

final Vegetables potatoes = Vegetables(
  vegetableImage: '${kVegetablesImagesAsset}potatoes.jpeg',
  vegetableName: 'Potatoes',
  vegetableCategory: 'Vegetables',
  vegetablePrice: '\$5.99',
);

final Vegetables taro = Vegetables(
  vegetableImage: '${kVegetablesImagesAsset}taro.jpg',
  vegetableName: 'Taro',
  vegetableCategory: 'Vegetables',
  vegetablePrice: '\$5.50',
);

List vegetablesList = [okra, peas, potatoes, taro];


class Product {

 String? productName;
 double? productPrice;
 File mobileImage;

 Product({required this.mobileImage, this.productName, this.productPrice});

 static Product fromMap(Map<String, dynamic> map) {
   return Product(
       productName: map['productName'],
       productPrice: map['productPrice'],
       mobileImage: map['mobileImage']
   );
 }

}

List<DropdownMenuItem<String>> productCategory = const [
  DropdownMenuItem(
    child: Text('Fruits'),
    value: 'Fruits',
  ),
  DropdownMenuItem(
    child: Text('Vegetables'),
    value: 'Vegetables',
  ),
  DropdownMenuItem(
    child: Text('Other'),
    value: 'Other',
  ),
];


List listOfProducts = [


];