import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget with _ColorUtility {
  BubbleStories({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: grey400,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(text)
        ],
      ),
    );
  }
}

class _ColorUtility {
  Color grey400 = Colors.grey.shade400;
}
