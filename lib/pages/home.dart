import 'package:flutter/material.dart';

class UserHome extends StatelessWidget with _ColorUtility, _PaddingUtility {
  UserHome({super.key});

  // Text
  String logo = 'Instagram';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorTransparent,
        elevation: 0,
        title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            logo,
            style: TextStyle(color: black),
          ),
          Row(
            children: [
              const Icon(Icons.add),
              Padding(
                padding: paddingAll,
                child: const Icon(Icons.favorite),
              ),
              const Icon(Icons.share),
            ],
          )
        ]),
      ),
      body: const Center(child: Text('Home')),
    );
  }
}

// Colors
mixin _ColorUtility {
  Color black = Colors.black;
  Color colorTransparent = Colors.transparent;
}

// Paddings
mixin _PaddingUtility {
  final EdgeInsets paddingAll = const EdgeInsets.all(24);
}
