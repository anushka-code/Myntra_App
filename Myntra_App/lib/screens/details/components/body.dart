import 'package:flutter/material.dart';
import 'package:Myntra_App/components/default_button.dart';
import 'package:Myntra_App/models/Product.dart';
import 'package:Myntra_App/screens/cart/cart_screen.dart';
import 'package:Myntra_App/screens/try_on/try_on_screen.dart';
import 'package:Myntra_App/size_config.dart';
import 'package:Myntra_App/screens/details/details_screen.dart';
import 'color_dots.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';
import 'package:Myntra_App/models/Cart.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(product: product),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(40),
                          top: getProportionateScreenWidth(15),
                        ),
                        child: Row(

                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: DefaultButton(
                                  text: "Try On",
                                  press: () {
                                    print(product.title);
                                    addTryOnProduct(product);
                                    Navigator.pushNamed(
                                      context,
                                      TryOnScreen.routeName,
                                      // arguments:
                                      //     ProductDetailsArguments(product: product),
                                    );
                                  },
                                ),
                              ),
                            ),
                            Expanded(
                              child: DefaultButton(
                                text: "Add To Cart",
                                press: () {
                                  print(product.title);
                                  addProduct(product);
                                  Navigator.pushNamed(
                                    context,
                                    CartScreen.routeName,
                                    // arguments:
                                    //     ProductDetailsArguments(product: product),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
