import 'package:flutter/material.dart';
import 'package:flutter_ytiol/share_receiver.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your Site Name',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const WebView(title: 'Your Site Name'),
      home: const ShareReceiver(),
      // home: UploadStepper(),
    );
  }
}
