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
  fruitCategory: 'Organic',
  fruitPrice: '\$4.99',
);

final Fruits apples = Fruits(
  fruitImage: '${kFruitsImagesAsset}apples.png',
  fruitName: 'Apples',
  fruitCategory: 'Organic',
  fruitPrice: '\$5.00',
);

final Fruits chikku = Fruits(
  fruitImage: '${kFruitsImagesAsset}chikku.png',
  fruitName: 'Chikku',
  fruitCategory: 'Organic',
  fruitPrice: '\$9.00',
);

final Fruits peaches = Fruits(
  fruitImage: '${kFruitsImagesAsset}peaches.png',
  fruitName: 'Peaches',
  fruitCategory: 'Organic',
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
  vegetableCategory: 'Organic',
  vegetablePrice: '\$6.99',
);

final Vegetables peas = Vegetables(
  vegetableImage: '${kVegetablesImagesAsset}peas.jpeg',
  vegetableName: 'Peas',
  vegetableCategory: 'Organic',
  vegetablePrice: '\$10.50',
);

final Vegetables potatoes = Vegetables(
  vegetableImage: '${kVegetablesImagesAsset}potatoes.jpeg',
  vegetableName: 'Potatoes',
  vegetableCategory: 'Organic',
  vegetablePrice: '\$5.99',
);

final Vegetables taro = Vegetables(
  vegetableImage: '${kVegetablesImagesAsset}taro.jpg',
  vegetableName: 'Taro',
  vegetableCategory: 'Organic',
  vegetablePrice: '\$5.50',
);

List vegetablesList = [okra, peas, potatoes, taro];
