import 'package:Myntra_App/constants.dart';
import 'package:Myntra_App/models/Product.dart';
import 'package:Myntra_App/screens/offline_check_out/offlineCart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'dart:async';
import 'package:flutter/services.dart';

class BarcodeScanner extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<BarcodeScanner> {
  String _scanBarcode = 'NA';

  @override
  void initState() {
    super.initState();
  }

  startBarcodeScanStream() async {
    FlutterBarcodeScanner.getBarcodeStreamReceiver(
            "#ff6666", "Cancel", true, ScanMode.BARCODE)
        .listen((barcode) => print(barcode));
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          "#ff6666", "Cancel", true, ScanMode.BARCODE);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      print("########## " + barcodeScanRes);
      _scanBarcode = getProductName(barcodeScanRes);
      print("########## " + _scanBarcode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Builder(builder: (BuildContext context) {
      return Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 4,
                    child: Container(
                      padding: EdgeInsets.all(40),
                      child: Image.asset("assets/images/barcode.png"),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () => scanBarcodeNormal(),
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 45 , vertical: 10),
                          color: Colors.pink[700],
                          child: Center(
                              child: Text(
                            "Start barcode scan",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ))),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 70),
                        child: Text(
                          'Scan Result : $_scanBarcode\n',
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () => Navigator.pushNamed(
                                    context,
                                    OfflineCheckOut.routeName,
                                  ),
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 35,vertical: 20),
                          color: kPrimaryColor,
                          child: Center(
                              child: Text(
                            "Check Out",
                            style: TextStyle(color: Colors.white, fontSize: 25 , fontWeight: FontWeight.bold),
                          ))),
                    ),
                  ),
                ]),
          ));
    }));
  }
}
