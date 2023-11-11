import 'package:ajio/widgets/widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildAppbar(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
            ),
            buildHomeScrollBar(),
            Container(
              width: double.infinity,
              height: 50,
              child: Image.asset('assets/days.jpg'),
            ),
            CarouselSlider.builder(
                itemCount: carouselImage.length,
                itemBuilder: (context, index, realIndex) {
                  final imagePath = carouselImage[index];
                  return buildImage(imagePath, index);
                },
                options: CarouselOptions(
                  height: 280,
                  autoPlay: true,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeindex = index;
                    });
                  },
                )),
            Image.asset('assets/frnt.jpg'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(
                left: 10,
                top: 2,
              ),
              child: Row(
                children: [
                  Image.asset('assets/Rupay.jpg', height: 50, width: 200),
                  Image.asset('assets/sbicard.jpg', height: 50, width: 200),
                  Image.asset('assets/sbi.jpg', height: 50, width: 300),
                  Image.asset('assets/AU.jpg', height: 50, width: 300),
                  Image.asset('assets/idfc.jpg', height: 50, width: 300),
                  Image.asset('assets/debit.jpg', height: 50, width: 300),
                  Image.asset('assets/yesbank.jpg', height: 50, width: 300),
                  Image.asset('assets/indsuld.jpg', height: 70, width: 300),
                  Image.asset('assets/fi.jpg', height: 70, width: 300),
                  Image.asset('assets/kwik.jpg', height: 70, width: 300),
                  Image.asset('assets/payup.jpg', height: 70, width: 300)
                ],
              ),
            ),
             Container(
              width: double.infinity,
              height: 40,
              child: Image.asset('assets/charts.png'),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image.asset('assets/1min.png'),
                Image.asset('assets/min 1.png'),
                Image.asset('assets/min3.png'),
                Image.asset('assets/min4.png')

              ],
            ),
            ),
           
            
             Container(
                  child: Image.asset('assets/deals.png'),

                ),
            CarouselSlider.builder(
                itemCount:  carouselImage.length, 
                itemBuilder: (context,index,realIndex){
                   final imagePath = carouselImage[index];
                  return buildImage(imagePath, index);
                },
                
                  options: CarouselOptions(
                  height: 280,
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
