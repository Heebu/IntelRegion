import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Sports extends StatefulWidget {
  const Sports({Key? key}) : super(key: key);

  @override
  State<Sports> createState() => _SportsState();
}

class _SportsState extends State<Sports> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'https://www.intelregion.com/sport/',
      javascriptMode: JavascriptMode.unrestricted,
      zoomEnabled: true,
      backgroundColor: Colors.yellowAccent,
      allowsInlineMediaPlayback: true,
    );
  }
}
