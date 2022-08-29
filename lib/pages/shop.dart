import 'package:flutter/material.dart';

import '../util/shop_grid.dart';

class UserShop extends StatelessWidget with _ColorsProje {
  UserShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: colorTrans,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Shop',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(
                  children: const [
                    Icon(Icons.calendar_today),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.menu)
                  ],
                )
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Container(
                    padding: const EdgeInsets.all(4.0),
                    color: Colors.grey.shade300,
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey.shade500,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.grey.shade500, fontSize: 12),
                        )
                      ],
                    ),
                  )),
            ),
            Expanded(child: ShopGrid())
          ],
        ));
  }
}

class _ColorsProje {
  Color colorTrans = Colors.transparent;
}
