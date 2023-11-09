import 'package:ajio/widgets/widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int activeindex = 0;
  final carouselImage = [
    'assets/IMG_9522-1.PNG',
    'assets/IMG_9521-2.PNG',
    'assets/IMG_9520-3.PNG',
    'assets/IMG_9519-4.PNG'
  ];
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Column(
        children: [
         buildAppbar(),
         SingleChildScrollView(
          scrollDirection: Axis.horizontal,
         ),
         buildHomeScrollBar(),
          SizedBox(
            height: 20,
          ),
          Container(
              width: double.infinity,
              height: 50,
              child: Center(
                child: Text(
                  'HURRY! LAST 2 DAYS OF SALE',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
              ),
              color: Color.fromARGB(255, 6, 84, 103)),
          CarouselSlider.builder(
              itemCount: carouselImage.length,
              itemBuilder: (context, index, realIndex) {
                final imagePath = carouselImage[index];
                return buildImage(imagePath, index);
              },
              options: CarouselOptions(
                height: 270,
                autoPlay: true,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    activeindex = index;
                  });
                },
              )),
        ],

      ),
    );
  }

  Widget buildImage(String imagepath, int index) => Container(
        color: Colors.grey,
        child: Image.asset(
          imagepath,
          fit: BoxFit.fill,
        ),
         
      );
  }
