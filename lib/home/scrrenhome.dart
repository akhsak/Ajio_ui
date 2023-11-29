// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ajio/screens/acoount.dart';
import 'package:ajio/screens/explore.dart';
import 'package:ajio/screens/trndin.dart';
import 'package:ajio/screens/categories.dart';
import 'package:ajio/screens/home.dart';
import 'package:flutter/material.dart';

class bottombar extends StatefulWidget {
  const bottombar({super.key});

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  int _myIndex = 0;
  void navigatebottombar(int index) {
    setState(() {
      _myIndex = index;
    });
  }

  final home = [
    Homepage(),
    Explorepage(),
    Trndpage(),
    CategoriesPage(),
    Accountpage(),
  
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: home[_myIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        //showUnselectedLabels: true,
        onTap: navigatebottombar,
        currentIndex: _myIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "switch strores",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.house_siding,
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
                Icons.person,
              ),
              label: 'Account'),
        ],
      ),
    );
  }
}
