import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/home.dart';

class customhomescreen extends StatefulWidget {
  const customhomescreen({Key? key}) : super(key: key);

  @override
  State<customhomescreen> createState() => _customhomescreenState();
}

class _customhomescreenState extends State<customhomescreen> {
  final List<Widget> tabs = const [
   // Center(child: Text("home screen")), // Thêm hình ảnh vào tab Home
   homescreen(),
    Center(child: Text("catelogy sreen")),
    Center(child: Text("store sreen")),
    Center(child: Text("cart sreen")),
    Center(child: Text("profile sreen")),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.red,
        selectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Catelogy',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
