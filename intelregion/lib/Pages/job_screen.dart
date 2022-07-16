import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Job extends StatefulWidget {
  const Job({Key? key}) : super(key: key);

  @override
  State<Job> createState() => _JobState();
}

class _JobState extends State<Job> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'https://www.intelregion.com/jobs/',
      javascriptMode: JavascriptMode.unrestricted,
      zoomEnabled: true,
      backgroundColor: Colors.green,
    );
  }
}
