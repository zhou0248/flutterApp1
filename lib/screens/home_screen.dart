import 'package:flutter/material.dart';
import '../widgets/font_list.dart';
import '../widgets/asset_img_list.dart';
import '../widgets/network_img_list.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Flutter App 1 Home Page'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          children: [
            Expanded(
                child: Container(
              child: AssetImgList(),
            )),
            Expanded(
                child: Container(
              margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: FontList(),
            )),
            Expanded(
                child: Container(
              child: NetworkImgList(),
            ))
          ],
        ),
      ),
    );
  }
}
