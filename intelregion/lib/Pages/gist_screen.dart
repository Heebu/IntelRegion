import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Lifestyle extends StatefulWidget {
  const Lifestyle({Key? key}) : super(key: key);

  @override
  State<Lifestyle> createState() => _LifestyleState();
}

class _LifestyleState extends State<Lifestyle> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'https://www.intelregion.com/category/lifestyle/',
      javascriptMode: JavascriptMode.unrestricted,
      zoomEnabled: true,
      backgroundColor: Colors.pinkAccent,
      allowsInlineMediaPlayback: true,
    );
  }
}
