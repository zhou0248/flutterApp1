import 'package:flutter/material.dart';
import '../widgets/fontList.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Flutter App 1 Home Page'),
          ),
          toolbarHeight: 70,
        ),
        body: Padding(
          padding: const EdgeInsets.all(17.0),
          child: FontList(),
        ));
  }
}
