import 'package:evaluation_task/Model/shipment.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'Screen/homepage.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const MyApp(),
    theme: ThemeData.light(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Shipment(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: homepage(),
      ),
    );
  }
}
