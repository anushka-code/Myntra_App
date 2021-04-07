import 'package:flutter/material.dart';
import 'Product.dart';

class Cart {
  final Product product;
  int numOfItem;

  Cart({@required this.product, @required this.numOfItem});
}

// Demo data for our cart
void addProduct(Product product) {
  print(product.title);
  bool flag = false;
  for (var x in demoCarts) {
    if (x.product.id == product.id) {
      flag = true;
      x.numOfItem += 1;
    }
  }
  if (flag == false) {
    demoCarts.add(Cart(product: product, numOfItem: 1));
  }
}

List<Cart> demoCarts = [
  Cart(product: demoProducts[0], numOfItem: 2),
  Cart(product: demoProducts[1], numOfItem: 1),
  Cart(product: demoProducts[3], numOfItem: 1),
];
