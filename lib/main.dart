import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ytiol/stepper.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

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
      // home: const ShareReceiver(),
      home: UploadStepper(),
    );
  }
}

class ShareReceiver extends StatefulWidget {
  const ShareReceiver({super.key});

  @override
  _ShareReceiver createState() => _ShareReceiver();
}

class _ShareReceiver extends State<ShareReceiver> {
  late StreamSubscription _intentSub;
  final _sharedFiles = <SharedMediaFile>[];

  @override
  void initState() {
    super.initState();

    // Listen to media sharing coming from outside the app while the app is in the memory.
    _intentSub = ReceiveSharingIntent.instance.getMediaStream().listen((value) {
      setState(() {
        _sharedFiles.clear();
        _sharedFiles.addAll(value);

        print(_sharedFiles.map((f) => f.toMap()));
      });
    }, onError: (err) {
      print("getIntentDataStream error: $err");
    });

    // Get the media sharing coming from outside the app while the app is closed.
    ReceiveSharingIntent.instance.getInitialMedia().then((value) {
      setState(() {
        _sharedFiles.clear();
        _sharedFiles.addAll(value);
        print(_sharedFiles.map((f) => f.toMap()));

        // Tell the library that we are done processing the intent.
        ReceiveSharingIntent.instance.reset();
      });
    });
  }

  @override
  void dispose() {
    _intentSub.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const textStyleBold = TextStyle(fontWeight: FontWeight.bold);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              const Text("Shared files:", style: textStyleBold),
              Text(_sharedFiles
                  .map((f) => f.toMap())
                  .join(",\n****************\n")),
            ],
          ),
        ),
      ),
    );
  }
}
