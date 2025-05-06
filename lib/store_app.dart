import 'package:flutter/material.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'storeapp',
      home: Scaffold(appBar: AppBar(title: Text('storeapp'))),
    );
  }
}
