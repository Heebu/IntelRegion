import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Entertainment extends StatefulWidget {
  const Entertainment({Key? key}) : super(key: key);

  @override
  State<Entertainment> createState() => _EntertainmentState();
}

class _EntertainmentState extends State<Entertainment> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'https://www.intelregion.com/category/entertainment/',
      javascriptMode: JavascriptMode.unrestricted,
      zoomEnabled: true,
      backgroundColor: Colors.purple,
      allowsInlineMediaPlayback: true,
    );
  }
}
