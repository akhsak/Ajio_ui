import 'package:ajio/home/bag.dart';
import 'package:ajio/home/notification.dart';
import 'package:ajio/home/wishlist.dart';
import 'package:flutter/material.dart';

buildAppbar(context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    title: Container(
      child: Row(
        children: [
          SizedBox(
            width: 5,
          ),
          Image(
            image: AssetImage('assets/ajio.png'),
            width: 40,
            height: 40,
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'search by product,brand & more...',
                  border: InputBorder.none),
            ),
          ),
          Icon(
            Icons.camera_alt_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: 5,
          )
        ],
      ),
    ),
    titleTextStyle: TextStyle(color: Colors.black),
    actions: [
      IconButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => NotificationScreen()));
        },
        icon: Icon(Icons.notifications_none_outlined),
        color: Colors.black,
      ),
      IconButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => wishlist()));
        },
        icon: Icon(Icons.favorite_outline_sharp),
        color: Colors.black,
      ),
      IconButton(
        onPressed: () {
          Navigator.push(
              context, (MaterialPageRoute(builder: (context) => Bagpage())));
        },
        icon: Icon(Icons.shopping_bag_outlined),
        color: Colors.black,
      ),
    ],
  );
}

Widget buildHomeScrollBar() {
  return Container(
    height: 50,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [],
    ),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Icon(
            Icons.home,
            color: Colors.black,
          ),
          SizedBox(
            width: 12,
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/sale.jpg'),
            radius: 15,
          ),
          SizedBox(
            width: 5,
          ),
          Text("Sale",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400)),
          SizedBox(
            width: 12,
          ),
          CircleAvatar(
            backgroundImage: NetworkImage('assets/mens.jpg'),
            radius: 15,
          ),
          SizedBox(
            width: 5,
          ),
          Text("Men",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400)),
          SizedBox(
            width: 12,
          ),
          CircleAvatar(
            backgroundImage: NetworkImage('assets/women.jpg'),
            radius: 15,
          ),
          SizedBox(
            width: 5,
          ),
          Text("Women",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400)),
          SizedBox(
            width: 12,
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/kids.jpg'),
            radius: 15,
          ),
          SizedBox(
            width: 5,
          ),
          Text("Kids",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400)),
          SizedBox(
            width: 12,
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/jewellery.jpg'),
            radius: 15,
          ),
          SizedBox(
            width: 5,
          ),
          Text("Jewellery",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400)),
          SizedBox(
            width: 12,
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/footwear.jpg'),
            radius: 15,
          ),
          SizedBox(
            width: 5,
          ),
          Text("Footwear",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400)),
          SizedBox(
            width: 12,
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/Beauty.jpg'),
            radius: 15,
          ),
          SizedBox(
            width: 5,
          ),
          Text("Beauty",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400)),
          SizedBox(
            width: 12,
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/home.jpg'),
            radius: 15,
          ),
          SizedBox(
            width: 5,
          ),
          Text("Home",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400)),
        ],
      ),
    ),
  );
}
