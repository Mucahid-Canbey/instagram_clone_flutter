import 'package:flutter/material.dart';

import 'package:instagram/pages/account.dart';
import 'package:instagram/pages/home.dart';
import 'package:instagram/pages/reels.dart';
import 'package:instagram/pages/search.dart';
import 'package:instagram/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with _IconsText, _Icons {
  // Mevcut Diziyi seçer | bottom nav bar
  int _selectedIndex = 0;
  void _gezinenBottomNavbar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _children = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Sayfa Geçişleri
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _gezinenBottomNavbar,
          // butonları sığdırmak için =>
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: iconHome, label: home),
            BottomNavigationBarItem(icon: iconSearch, label: search),
            BottomNavigationBarItem(icon: iconReels, label: reels),
            BottomNavigationBarItem(icon: iconShop, label: shop),
            BottomNavigationBarItem(icon: iconAccount, label: account)
          ]),
    );
  }
}

class _IconsText {
  String home = 'home';
  final String search = 'search';
  final String reels = 'reels';
  final String shop = 'shop';
  final String account = 'account';
}

class _Icons {
  final iconHome = const Icon(Icons.home);
  final iconSearch = const Icon(Icons.search);
  final iconReels = const Icon(Icons.video_call_outlined);
  final iconShop = const Icon(Icons.shopping_bag_outlined);
  final iconAccount = const Icon(Icons.account_circle);
}
