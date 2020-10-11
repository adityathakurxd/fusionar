import 'package:flutter/material.dart';
import 'ar_screen.dart';
import 'shop.dart';

class HomePage extends StatefulWidget {
  static const routeName = "/bottom-navigation";
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': Shop(),
        'title': 'Shop',
      },
      {
        'page': ARScreen(),
        'title': 'Camera',
      },
    ];
    super.initState();
  }

  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectedPage,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            title: Text("Shop"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            title: Text("Camera"),
          ),
        ],
      ),
    );
  }
}
