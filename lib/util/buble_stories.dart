import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget with _ColorUtility, _SizeProje {
  BubbleStories({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(paddingAll),
      child: Column(
        children: [
          Container(
            height: containerHeight,
            width: containerWidth,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: grey300,
            ),
          ),
          SizedBox(
            height: sizedBoxHeight,
          ),
          Text(text)
        ],
      ),
    );
  }
}

class _ColorUtility {
  Color grey300 = Colors.grey.shade300;
}

class _SizeProje {
  final double containerWidth = 60;
  final double containerHeight = 60;
  final double sizedBoxHeight = 10;
  final paddingAll = 8.0;
}
