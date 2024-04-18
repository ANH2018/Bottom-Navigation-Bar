import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class customhomescreen extends StatefulWidget {
  const customhomescreen({Key? key}) : super(key: key);

  @override
  State<customhomescreen> createState() => _customhomescreenState();
}

class _customhomescreenState extends State<customhomescreen> {
  final List<Widget> tabs = const [
    Center(child: Image(image: AssetImage('asset/test_theme.jpg'))), // Thêm hình ảnh vào tab Home
    Center(child: Text("catelogysreen")),
    Center(child: Text("storesreen")),
    Center(child: Text("cartsreen")),
    Center(child: Text("profilesreen")),
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
