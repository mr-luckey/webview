import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController();
    _controller.loadFlutterAsset('assets/ch1_short.html');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: 400,
          child: WebViewWidget(
            controller: _controller,
          )),
    );
  }
}
