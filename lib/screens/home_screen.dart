import 'package:flutter/material.dart';

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

class FontList extends StatelessWidget {
  final List<String> fontsName = [
    'ComicNeue Bold',
    'ComicNeue Light',
    'ComicNeue Regular',
  ];

  final List fontsDescription = [
    FontWeight.w700,
    FontWeight.w300,
    FontWeight.w400,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: fontsName.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              fontsName[index],
              style: TextStyle(
                fontFamily: 'ComicNeue',
                fontWeight: fontsDescription[index],
              ),
            ),
          );
        });
  }
}
