
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      
      
              length:9 , 
              child: Scaffold(
              
                  appBar: AppBar(
                      elevation: 0,
                      backgroundColor: Colors.white,

                      title: Container(
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.yellow,width: 1.4),
                          borderRadius: BorderRadius.circular(15),
                        ),


                        child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Row(
                            children: [
                              Icon(Icons.search,color: Colors.grey,),
                                 Text('what are you looking for ?',style: TextStyle
                          (fontSize: 16,color: Colors.grey),),
                            ],
                          ),

                           Container(
                            height: 35,
                            width: 72,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(child: Text('search',style: TextStyle(fontSize: 16,color: Colors.grey),)),
                           ),
                           


                        ],
                        ),
                         
                      ), 
                      
                      bottom: TabBar(
                        isScrollable: true,
                        indicatorColor: Colors.yellow,
                        indicatorWeight: 8,
                        tabs: const [

                          RepeatTab(label: 'men',),
                          RepeatTab(label: 'women',),
                          RepeatTab(label: 'shoes',),
                          RepeatTab(label: 'Bags',),
                          RepeatTab(label: 'Electronics',),
                          RepeatTab(label: 'Accesstories',),
                          RepeatTab(label: 'Home and graden',),
                          RepeatTab(label: 'Kids',),
                          RepeatTab(label: 'Beauty',),

                        ],
                        ),
                  ),
                   body: const TabBarView(children: [
                    Center(child: Text('men screen'),),
                    Center(child: Text('women screen'),),
                    Center(child: Text('shoes screen'),),
                    Center(child: Text('Bags screen'),),
                    Center(child: Text('Electronics screen'),),
                    Center(child: Text('Accesstories screen'),),
                    Center(child: Text('Home and graden screen'),),
                    Center(child: Text('Kids screen'),),
                    Center(child: Text('Beauty screen'),),


                   ]),
           
                         ),
    );
  }
}

class RepeatTab extends StatelessWidget {
  final String label;

  const RepeatTab({
    super.key,required this.label
  });

  @override
  Widget build(BuildContext context) {
    return Tab(child: Text(label,style:TextStyle(color: Colors.grey.shade600) ,),);
  }
}