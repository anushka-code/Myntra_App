import 'package:Myntra_App/screens/cart/components/check_out_card.dart';
import 'package:flutter/material.dart';
import 'package:Myntra_App/models/Product.dart';
import 'components/body.dart';

class OfflineCheckOut extends StatelessWidget {
  static String routeName = "/offlineCO";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Offline Checkout",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${offlineProducts.length} items",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
