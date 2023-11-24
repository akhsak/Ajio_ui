import 'package:ajio/widgets/widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class Trndpage extends StatelessWidget {
  Trndpage({super.key});
  int slid = 0;
  final slideimage = [
    'assets/trnd2-1.jpg',
    'assets/trnd2-2.jpg',
    'assets/tnd2-3.jpg',
    'assets/trnd2-4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppbar(BuildContext),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image(image: AssetImage('assets/trnd1.jpg')),
              CarouselSlider.builder(
                  itemCount: slideimage.length,
                  itemBuilder: (context, index, realIndex) {
                    final imagePath = slideimage[index];
                    return buildImage(imagePath, index);
                  },
                  options: CarouselOptions(
                    height: 250,
                    autoPlay: true,
                    viewportFraction: 1,
                  )),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      height: 200,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Image.asset('assets/trnd3-1.jpg'),
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Image.asset('assets/trnd3-2.jpg')),
                    ),
                    SizedBox(
                      height: 200,
                      child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Image.asset('assets/trnd3-3.jpg')),
                    ),
                  ],
                ),
              ),
              Image(image:AssetImage('assets/trnd5.jpg') ),
               SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                    height: 300,
                    child: Image(image: AssetImage('assets/trnd4-1.jpg'))),
                SizedBox(
                    height: 300,
                    child: Image(image: AssetImage('assets/trnd4-2.jpg'))),
              ],
            ),
          ),
            ],
          ),
        ));
  }

  Widget buildImage(String imagePath, int index) => Container(
        width: double.infinity,
        color: const Color.fromARGB(255, 114, 105, 105),
        child: Image.asset(
          imagePath,
          fit: BoxFit.fill,
        ),
      );
}
