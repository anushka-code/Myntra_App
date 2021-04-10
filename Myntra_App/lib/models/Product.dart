import 'package:flutter/material.dart';

Map<int, int> tryOnCount = {1: 0, 2: 0, 3: 0, 4: 0, 5: 0,6:0,7:0};
Map<int, int> offlineCount = {1: 0, 2: 0, 3: 0, 4: 0, 5: 0,6:0,7:0};

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite;
  final int barcode;

  Product({
    @required this.id,
    @required this.images,
    @required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    @required this.title,
    @required this.price,
    @required this.description,
    @required this.barcode,
  });
  void initialize() {
    for (int i = 0; i < demoProducts.length; i++) {
      tryOnCount[demoProducts[i].id] = 0;
      offlineCount[demoProducts[i].id] = 0;
    }
  }
}

// Our demo Products

List<Product> demoProducts = [

  Product(
    id: 1,
    images: [
      "assets/images/shirt.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Roadster - Casual Shirt",
    price: 670.5,
    description: "Define your everyday collection with a stylish approach by choosing this t-shirt ",
    rating: 4.1,
    barcode: 8901030789344,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/tshirt.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Adidas Sports T-Shirt",
    price: 1050.5,
    description: "From the stadium to the streets, make a sporty style statement with the Adidas Men's Active T-shirt.",
    rating: 4.1,
    barcode: 8901030789344,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/glap.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gloves XC Omega - Polygon",
    price: 560.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
    barcode: 8901030789345,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/wireless headset.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Unisex Logitech Headphones",
    price: 1200.20,
    description: description,
    rating: 4.2,
    isFavourite: true,
    barcode: 8901030789346,
  ),
  Product(
    id: 5,
    images: [
      "assets/images/clinc_plus.jpg",
    ],
    colors: [
      Colors.white,
    ],
    title: "Clinic Plus Shampoo 30 ml",
    price: 10.0,
    description:
        "Clinic Plus+ Strong & Long Health Shampoo 30 ml Applied For – Damage Repair, Deep Conditioning, Daily Care, Dryness Care, Split-ends, Scalp Cleansing Shampoo",
    rating: 4.5,
    isFavourite: true,
    barcode: 8901030789342,
  ),
    Product(
    id: 6,
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Wireless Controller for PS4™",
    price: 6444.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    barcode: 8901030789341,
  ),
  Product(
    id: 7,
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Nike Sport White - Man Pant",
    price: 850.5,
    description: description,
    rating: 4.1,
    barcode: 8901030789344,
  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";

List<Product> tryOnProducts = [demoProducts[0]];
List<Product> offlineProducts = [demoProducts[0],demoProducts[6]];
void addTryOnProduct(Product product) {
  print(product.title);
  bool flag = false;
  for (var x in tryOnProducts) {
    if (x.id == product.id) {
      flag = true;
    }
  }
  if (flag == false) {
    tryOnCount[product.id] = tryOnCount[product.id] + 1;
    tryOnProducts.add(product);
  }
}

void addOfflineProduct(Product product) {
  print(product.title);
  bool flag = false;
  for (var x in offlineProducts) {
    if (x.id == product.id) {
      flag = true;
    }
  }
  if (flag == false) {
    offlineCount[product.id] = offlineCount[product.id] + 1;
    offlineProducts.add(product);
  }
}

String getProductName(String barcodeScanRes) {
  for (var x in demoProducts) {
    if (x.barcode ==  int.parse(barcodeScanRes) ) {
      addOfflineProduct(x);
      return x.title;
    }
  }
  return "";
}
