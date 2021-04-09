import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewURL {
  final String url;
  WebViewURL(this.url);
}

class RoundTrip extends StatefulWidget {
  static const routeName = "/roundtrip";
  final String url = 'https://maps-round-trip.web.app/';
  @override
  createState() => _RoundTripState(this.url);
}

class _RoundTripState extends State<RoundTrip> {
  var _url;
  final _key = UniqueKey();
  _RoundTripState(this._url);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
                child: WebView(
                    key: _key,
                    javascriptMode: JavascriptMode.unrestricted,
                    initialUrl: _url))
          ],
        ));
  }
}
