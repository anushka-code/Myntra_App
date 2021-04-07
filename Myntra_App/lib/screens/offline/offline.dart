import 'package:flutter/material.dart';
import 'package:Myntra_App/components/coustom_bottom_nav_bar.dart';
import 'package:Myntra_App/enums.dart';
import 'barcode.dart';

class Offline extends StatelessWidget {
  static String routeName = "/offline";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BarcodeScanner(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.offline),
    );
  }
}
