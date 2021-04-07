import 'package:Myntra_App/models/Cart.dart';
import 'package:Myntra_App/models/Product.dart';
import 'package:Myntra_App/screens/try_on/try_on_screen.dart';
import 'package:flutter/material.dart';
import 'package:Myntra_App/screens/cart/cart_screen.dart';

import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            numOfitem: demoCarts.length,
            press: () => Navigator.pushNamed(context, CartScreen.routeName),
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/try_on.svg",
            numOfitem: tryOnProducts.length,
            press: () => Navigator.pushNamed(context, TryOnScreen.routeName),
           
            
          ),
        ],
      ),
    );
  }
}
