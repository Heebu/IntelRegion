import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Tech extends StatefulWidget {
  const Tech({Key? key}) : super(key: key);

  @override
  State<Tech> createState() => _TechState();
}

class _TechState extends State<Tech> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'https://www.intelregion.com/category/technology/',
      javascriptMode: JavascriptMode.unrestricted,
      zoomEnabled: true,
      backgroundColor: Colors.blueGrey,
      allowsInlineMediaPlayback: true,
      gestureNavigationEnabled: true,
    );
  }
}
