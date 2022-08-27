import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram/util/buble_stories.dart';

class UserHome extends StatelessWidget with _ColorUtility, _PaddingUtility {
  UserHome({super.key});

  // Text
  String logo = 'Instagram';
  final List people = ['busra0707_', 'elonmusk', 'sertangulveren', 'duman', 'barisozcan'];
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
                padding: paddingAppBar,
                child: const Icon(Icons.favorite),
              ),
              const Icon(Icons.share),
            ],
          )
        ]),
      ),
      body: Column(
        children: [
          // Stories
          Container(
              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return BubbleStories(text: people[index]);
                  }))
        ],
      ),
    );
  }
}

// Colors
mixin _ColorUtility {
  Color grey400 = Colors.grey.shade400;
  Color black = Colors.black;
  Color colorTransparent = Colors.transparent;
}

// Paddings
mixin _PaddingUtility {
  final EdgeInsets paddingAppBar = const EdgeInsets.all(24);
}
