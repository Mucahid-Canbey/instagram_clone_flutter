import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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

class _HomePageState extends State<HomePage> {
  // Mevcut Diziyi seçer | bottom nav bar
  int _selectedIndex = 0;
  void _gezinenBottomNavbar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _children = [
    UserHome(),
    const UserSearch(),
    const UserReels(),
    const UserShop(),
    const UserAccount(),
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
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.video_call_outlined), label: 'Reels'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: 'Shop'),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Account')
          ]),
    );
  }
}
