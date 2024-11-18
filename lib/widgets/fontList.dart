import 'package:flutter/material.dart';

class FontList extends StatelessWidget {
  final List<String> fontsName = [
    'Default System Font',
    'ComicNeue Light',
    'ComicNeue Regular',
    'ComicNeue Bold',
  ];

  final List fontsDescription = [
    FontWeight.normal,
    FontWeight.w300,
    FontWeight.w400,
    FontWeight.w700,
  ];

  final List<IconData> icons = [
    Icons.list,
    Icons.article,
    Icons.view_list,
    Icons.assignment,
  ];

  final List colors = [
    Colors.pink.shade900,
    Colors.blue.shade900,
    Colors.green.shade900,
    Colors.red.shade900,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: fontsName.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            fontsName[index],
            style: TextStyle(
              fontFamily: fontsName[index].toString().contains('ComicNeue')
                  ? 'ComicNeue'
                  : '',
              fontWeight: fontsDescription[index],
            ),
          ),
          leading: Icon(
            icons[index],
          ),
          //style
          textColor: colors[index],
          iconColor: colors[index],
          tileColor: Colors.blueGrey.shade100,
          minVerticalPadding: 20.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(thickness: 2, color: colors[index]);
      },
    );
  }
}
