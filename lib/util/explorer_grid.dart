import 'package:flutter/material.dart';

// ignore: camel_case_types
class ExplorerGrid extends StatelessWidget {
  const ExplorerGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                color: Colors.indigo.shade100,
              ));
        });
  }
}
