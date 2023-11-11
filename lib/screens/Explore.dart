// import 'package:ajio/widgets/widget.dart';

// import 'package:flutter/material.dart';


// final slideI = [
//   'assets/expl-1.jpg',
//   'assets/expl-1.jpg',
//   'assets/expl-1.jpg',
//   'assets/expl-1.jpg'
// ];
// final slide2 = ['assets/expl-1.jpg', '', ''];
// final slide3 = ['assets/expl-1.jpg', '', ''];
// final grid= [
//   'assets/expl-1.jpg',
//   '',
//   '',
//   '',
//   '',
//   ''
// ];

// class Explorepage extends StatefulWidget {
//   const Explorepage({super.key});

//   @override
//   State<Explorepage> createState() => _ExplorepageState();
// }

// class _ExplorepageState extends State<Explorepage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: buildAppbar(),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//           children: [  
//            Image(
//                 image: AssetImage('assets/fashionjpg.PNG'),      
//               ),
          
              
//             //   Carousel(
//             //   carouselImage: slide,
//             //   Height: 300,
//             //   width: double.infinity,
//             //   ViewportFraction: 1,
//             // ),
//             // exploreImage(),
//             // Carousel(
//             //   carouselImage: slide2,
//             //   Height: 130,
//             //   width: double.infinity,
//             //   ViewportFraction: 1,
//             // ),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
//               child: Image(image: AssetImage('assets/expl-1.jpg')),
//             ),
//             // Carousel(
//             //   carouselImage: slide3,
//             //   Height: 250,
//             //   width: double.infinity,
//             //   ViewportFraction: 1,
//             // ),
//             Image(image: AssetImage('assets/expl-1.jpg')),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: GridView.builder(
//                 shrinkWrap: true,
//                 physics: NeverScrollableScrollPhysics(),
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 3,
//                   childAspectRatio: 3 / 4,
//                 ),
//                 itemCount: 6,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     margin: EdgeInsets.all(12),
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage(grid[index]),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
            
//           ],
//         ),
        
//       ),
//     );
//   }
// }
import 'package:ajio/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final slideI = [
  'assets/expl-1.jpg',
  'assets/expl-1.jpg',
  'assets/expl-1.jpg',
  'assets/expl-1.jpg'
];
final slide2 = ['assets/expl-1.jpg', 'assets/expl-2.jpg', ''];
final slide3 = ['assets/expl-1.jpg', 'assets/expl-2.jpg', ''];
final grid = [
  'assets/expl-1.jpg',
  'assets/expl-2.jpg',
  'assets/expl-2.jpg',
  'assets/expl-2.jpg',
  'assets/expl-2.jpg',
  'assets/expl-2.jpg'
];

class Explorepage extends StatefulWidget {
  const Explorepage({Key? key}) : super(key: key);

  @override
  State<Explorepage> createState() => _ExplorepageState();
}

class _ExplorepageState extends State<Explorepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Image(
              image: AssetImage('assets/fashionjpg.PNG'),
            ),
            CarouselSlider(
              items: slideI.map((item) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                  child: Image(image: AssetImage('assets/expl-1.jpg')),
                );
              }).toList(),
              options: CarouselOptions(
                height: 300,
                enlargeCenterPage: true,
                viewportFraction: 1,
              ),
            ),
            CarouselSlider(
              items: slide2.map((item) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                  child: Image(image: AssetImage('assets/expl-1.jpg')),
                );
              }).toList(),
              options: CarouselOptions(
                height: 130,
                enlargeCenterPage: true,
                viewportFraction: 1,
              ),
            ),
            CarouselSlider(
              items: slide3.map((item) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                  child: Image(image: AssetImage('assets/expl-1.jpg')),
                );
              }).toList(),
              options: CarouselOptions(
                height: 250,
                enlargeCenterPage: true,
                viewportFraction: 1,
              ),
            ),
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
    );
  }
}

  
      
    