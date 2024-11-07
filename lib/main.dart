import 'dart:convert';

import 'package:flutter/material.dart';
import "package:flutter/services.dart" as s;
import "package:yaml/yaml.dart";

import 'config.dart';
import 'hex_color.dart';
import 'loading.dart';
import 'web_component.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Config? config;
  //      const Config(title: 'asd', url: 'https://flutter.dev', color: '#2196F3');

  @override
  void initState() {
    super.initState();
    loadConfig();
  }

  void loadConfig() async {
    final data = await s.rootBundle.loadString('assets/config.yaml');
    final mapData = loadYaml(data);
    print("yaml: $mapData");
    setState(() {
      var jsonData = json.decode(json.encode(mapData));
      config = Config.fromJson(jsonData);
      print('config: $config');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: config != null ? config!.title : 'Loading...',
      theme: ThemeData(
        colorScheme: config != null
            ? ColorScheme.fromSeed(seedColor: HexColor.fromHex(config!.color))
            : const ColorScheme.light(),
      ),
      home:
          config != null ? WebComponent(config: config!) : const LoadingPage(),
    );
  }
}
