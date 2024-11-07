import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'config.dart';
import 'hex_color.dart';

class WebComponent extends StatefulWidget {
  const WebComponent({super.key, required this.config});

  final Config config;

  @override
  State<WebComponent> createState() => _WebComponentState();
}

class _WebComponentState extends State<WebComponent> {
  static String currentUrl = '';

  @override
  void initState() {
    super.initState();
    currentUrl = widget.config.url;
    controller.loadRequest(Uri.parse(currentUrl));
    controller.setBackgroundColor(HexColor.fromHex(widget.config.color));
  }

  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {
          currentUrl = url;
        },
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://www.youtube.com/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.config.title),
        actions: [
          IconButton(
              onPressed: () => {Share.share(currentUrl)},
              icon: const Icon(Icons.share))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child: WebViewWidget(controller: controller))
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
