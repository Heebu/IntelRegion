import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: 'https://www.intelregion.com/about-us/',
        javascriptMode: JavascriptMode.unrestricted,
        zoomEnabled: true,
        backgroundColor: Colors.green,
      ),
    );
  }
}
