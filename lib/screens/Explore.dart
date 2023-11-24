import 'package:ajio/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Explorepage extends StatefulWidget {
  const Explorepage({super.key});

  @override
  State<Explorepage> createState() => _ExplorepageState();
}
int exp = 0;
final expcarousel = [
  'assets/expl-1.jpg',
  'assets/expl-2.jpg',
  'assets/expl-1.jpg',
  'assets/expl-2.jpg'
];
final slid2 = ['assets/luxe.png', 'assets/AZRT.png', 'assets/Gap.png'];
final slid3 = ['assets/img1.png', 'assets/img2.png', 'assets/img3.png'];
final grid = [
  'assets/expl-1.jpg',
  'assets/expl-2.jpg',
  'assets/expl-2.jpg',
  'assets/expl-2.jpg',
  'assets/expl-2.jpg',
  'assets/expl-2.jpg'
];
class _ExplorepageState extends State<Explorepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: 
        buildAppbar(BuildContext),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/fashionjpg.PNG'),
              CarouselSlider.builder(
                  itemCount: expcarousel.length,
                  itemBuilder: (context, index, realIndex) {
                    final imagePath = expcarousel[index];
                    return buildImage(imagePath, index);
                  },
                  options: CarouselOptions(
                    height: 250,
                    autoPlay: true,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        exp = index;
                      });
                    },
                  )),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/expl-1.jpg',
                            height: 170,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/footwear.jpg',
                                  height: 82,
                                  width: 50,
                                ),
                                Image.asset('assets/footwear.jpg',
                                    height: 82, width: 100),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              'assets/footwear.jpg',
                              height: 80,
                            ),
                            Image.asset(
                              'assets/footwear.jpg',
                              height: 80,
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/men.jpg',
                          height: 165,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/expl-1.jpg',
                          height: 170,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/kids.jpg',
                                height: 82,
                              ),
                              Image.asset(
                                'assets/footwear.jpg',
                                height: 82,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    CarouselSlider.builder(
                        itemCount: slid2.length,
                        itemBuilder: (context, index, realIndex) {
                          final imagePath = slid2[index];
                          return buildImage(imagePath, index);
                        },
                        options: CarouselOptions(
                          height: 110,
                          autoPlay: true,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              exp = index;
                            });
                          },
                        )),
                    Image(
                      image: AssetImage('assets/festiv.png'),
                    ),
                    CarouselSlider.builder(
                      itemCount: slid3.length,
                      itemBuilder: (context, index, realIndex) {
                        final imagePath = slid3[index];
                        return buildImage(imagePath, index);
                      },
                      options: CarouselOptions(
                        height: 250,
                        enlargeCenterPage: true,
                        viewportFraction: 1,
                      ),
                    ),
                    Container(
                        height: 290, child: Image.asset('assets/emblls.png')),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 3 / 4,
                        ),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(grid[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
  Widget buildImage(String imagepath, int index) => Container(
        width: double.infinity,
        color: Colors.grey,
        child: Image.asset(
          imagepath,
          fit: BoxFit.fill,
        ),
      );
}
