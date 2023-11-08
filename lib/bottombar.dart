// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:ajio/screens/Acoount.dart';
import 'package:ajio/screens/Explore.dart';
import 'package:ajio/screens/TRNDin.dart';
import 'package:ajio/screens/categories.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class bottombar extends StatefulWidget {
  const bottombar({super.key});

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
   int myIndex = 0;
  void navigatebottombar(int index){
    setState(() {
      
      myIndex=index;
    });
  }

  final home=[
    Explorepage(),
    trndpage(),
    Categoriespage(),
    accountpage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('AJIO'),
        titleTextStyle: TextStyle(color: Colors.black),
       
        actions: [
           IconButton(onPressed: (){},
               icon: Icon(Icons.notifications_active_rounded),color: Colors.black,),
           IconButton(onPressed: (){},
               icon: Icon(Icons.favorite_outline_sharp),color: Colors.black,),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_bag_sharp),
              color: Color.fromARGB(255, 25, 21, 21)),
             
        ],
        elevation: 0,
      ),
     body:home[myIndex],
      bottomNavigationBar:BottomNavigationBar(
       type: BottomNavigationBarType.shifting,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      selectedFontSize: 10,
      unselectedFontSize: 10,
      showUnselectedLabels: true,
      onTap: navigatebottombar,
     currentIndex: myIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: "switch strores",
        ),
        
        BottomNavigationBarItem(
          icon: Icon(
            Icons.explore,
          ),
        label: "Explore",
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.trending_down_rounded,
            ),
            label: 'TRNDin'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.category_sharp,
            ),
            label: 'Categories'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_sharp,
            ),
            label: 'Account'),
            
      ],
      ),
    );
  }
}
