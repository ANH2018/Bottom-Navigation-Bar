
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      
      
              length:3 , 
              child: Scaffold(
              
                  appBar: AppBar(
                      elevation: 0,
                      backgroundColor: Colors.white,
                      title: const CupertinoSearchTextField(),
                      bottom: TabBar(
                        tabs: [

                          Tab(child: Text('men screen',style:TextStyle(color: Colors.grey.shade600) ,),),

                          Tab(child: Text('women screen',style:TextStyle(color: Colors.grey.shade600) ,),),

                          Tab(child: Text('shoes screen',style:TextStyle(color: Colors.grey.shade600) ,),),

                        ],
                        ),
                  ),
              
           
                         ),
    );
  }
}