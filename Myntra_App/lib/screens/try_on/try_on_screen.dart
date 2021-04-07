import 'package:flutter/material.dart';
import 'package:Myntra_App/models/Product.dart';
import 'components/MapCard.dart';
import 'components/body.dart';

class TryOnScreen extends StatelessWidget {
  static String routeName = "/tryon";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: MapCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Try On",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${tryOnProducts.length} items",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
