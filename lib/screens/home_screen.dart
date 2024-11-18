import 'package:flutter/material.dart';
import '../widgets/fontList.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter App 1 Home Page'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: FontList(),
        ));
  }
}
