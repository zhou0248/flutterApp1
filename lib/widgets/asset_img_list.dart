import 'package:flutter/material.dart';

class AssetImgList extends StatelessWidget {
  AssetImgList({super.key});

  final List<String> assetImgs = [
    'assets/images/img1.jpg',
    'assets/images/img2.jpg',
    'assets/images/img3.jpg',
    'assets/images/img4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        for (var img in assetImgs)
          Padding(
              padding: const EdgeInsets.all(17.0),
              child: Image(image: AssetImage(img), width: 300))
      ],
    );
  }
}
