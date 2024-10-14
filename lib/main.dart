import 'dart:convert';

import 'package:flutter/material.dart';
import "package:flutter/services.dart" as s;
import 'package:share_plus/share_plus.dart';
import 'package:webview_flutter/webview_flutter.dart';
import "package:yaml/yaml.dart";

import 'config.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var config = const Config(title: 'asd', lastName: 'qwe', age: 12);

  @override
  void initState() {
    super.initState();
    loadConfig();
  }

  void loadConfig() async {
    final data = await s.rootBundle.loadString('assets/config.yaml');
    final mapData = loadYaml(data);
    print(mapData);
    setState(() {
      config = Config.fromJson(json.decode(json.encode(mapData)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: config.title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: config.title),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static String currentUrl = 'https://flutter.dev';

  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
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
    )
    ..loadRequest(Uri.parse(currentUrl));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
