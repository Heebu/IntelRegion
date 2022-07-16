import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Scholarship extends StatefulWidget {
  const Scholarship({Key? key}) : super(key: key);

  @override
  State<Scholarship> createState() => _ScholarshipState();
}

class _ScholarshipState extends State<Scholarship> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'https://www.scholarshipregion.com//',
      javascriptMode: JavascriptMode.unrestricted,
      zoomEnabled: true,
      backgroundColor: Colors.yellow,
    );
  }
}
