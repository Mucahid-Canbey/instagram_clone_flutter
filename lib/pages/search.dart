import 'package:flutter/material.dart';

class UserSearch extends StatelessWidget with _ColorsProje, _paddingProje, _IconsProje {
  UserSearch({super.key});

  final String appBarText = 'Search';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: transparent,
          elevation: 0,
          title: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              padding: paddingSearch,
              color: grey400,
              child: Row(
                children: [
                  Icon(iconSearch, color: grey600),
                  Container(
                    child: Text(
                      appBarText,
                      style: TextStyle(color: grey600),
                    ),
                  )
                ],
              ),
            ),
          )),
      body: Center(child: Text('Search')),
    );
  }
}

class _ColorsProje {
  Color grey400 = Colors.grey.shade400;
  Color transparent = Colors.transparent;
  Color grey600 = Colors.grey.shade600;
}

mixin _paddingProje {
  final paddingSearch = const EdgeInsets.all(8);
}

class _IconsProje {
  var iconSearch = Icons.search;
}
