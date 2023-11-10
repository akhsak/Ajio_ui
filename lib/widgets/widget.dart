
import 'package:flutter/material.dart';

Widget buildAppbar(){
return  AppBar(
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
            onPressed: () {},
            icon: Icon(Icons.notifications_none_outlined),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_outline_sharp),
            color: Colors.black,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_bag_outlined),
              color: Color.fromARGB(255, 25, 21, 21)),
        ],
         );
}
Widget buildHomeScrollBar() {
  return Container(
    height: 50,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black,
          offset: Offset(0, 4),
          blurRadius: 15,
        ),
      ],
    ),
    child: SingleChildScrollView(scrollDirection: Axis.horizontal,
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
            backgroundImage: NetworkImage(
                'https://images.picxy.com/cache/2019/1/3/6993406ccf641d493dd1276bcfab77cb.jpg'),
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
            backgroundImage: NetworkImage(
                'https://img.freepik.com/premium-photo/beautiful-asian-woman-carrying-colorful-bags-shopping-online-with-mobile-phone_8087-3877.jpg'),
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
              style: TextStyle(color: Colors.black,
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