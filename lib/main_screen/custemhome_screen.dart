import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class customhomescreen extends StatefulWidget {
  const customhomescreen({super.key});

  @override
  State<customhomescreen> createState() => _customhomescreenState();
}

class _customhomescreenState extends State<customhomescreen> {
  @override
  final List <Widget> tabs =const[
    Center(child: Text("Homesreen"),),
    Center(child: Text("catelogysreen"),),
    Center(child: Text("storesreen"),),
    Center(child: Text("cartsreen"),),
    Center(child: Text("profilesreen"),),

  ];
  int _selecindex=0;

  Widget build(BuildContext context) {
    return  Scaffold(
         backgroundColor:Colors.blue,
         body: tabs[_selecindex],
         bottomNavigationBar:BottomNavigationBar( 
          backgroundColor:Colors.blue,
          type: BottomNavigationBarType.fixed, // canh chinh
          unselectedItemColor:Colors.red,
          selectedItemColor: Colors.black,
          currentIndex: _selecindex,
          items:const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home ',),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'catelogy',),
              BottomNavigationBarItem(
                icon: Icon(Icons.shop),
                label: 'store ',),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'cart ',), 
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'profile ',),

         ],
         
         onTap: (index)
         {
          setState(() {
            _selecindex=index;
          });
         }
         
         ),

    );
  }
}