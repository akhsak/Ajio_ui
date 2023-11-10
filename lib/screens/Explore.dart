 import 'package:ajio/widgets/widget.dart';
 import 'package:flutter/material.dart';

class Explorepage extends StatelessWidget {
  const Explorepage({super.key});

 @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Column(
        children: [
          buildAppbar(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
          )
        ],
      ),
    );
   
  
  
    
  

        
        
  


  }
}
      
//           // buildAppbar(),
//           // SingleChildScrollView(
//           //  scrollDirection:Axis.horizontal ,
//           // )
  
// exploreapp() {
//   return Column(
//     children: [
//       Container(
//         margin: EdgeInsets.all(8),
//         width: double.infinity,
//         height: 200,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Container(
//               width: 250,
//               height: 200,
//               color: Colors.black,
//               child: Image(
//                 image: AssetImage('assets/expl-1.jpg'),
//                 fit: BoxFit.fill,
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 color: Color.fromARGB(255, 255, 255, 255),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Expanded(
//                       child: Container(
//                         margin: EdgeInsets.fromLTRB(8, 0, 0, 4),
//                         // color: Colors.yellow,
//                         child: Image(
//                           image: AssetImage(''),
//                           fit: BoxFit.fill,
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: Container(
//                         margin: EdgeInsets.fromLTRB(8, 4, 0, 0),
//                         color: const Color.fromARGB(255, 52, 51, 42),
//                         child:
//                             Image(image: AssetImage('assets/expl-2.jpg')),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//       Container(
//         margin: EdgeInsets.all(8),
//         width: double.infinity,
//         height: 200,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Container(
//               color: Color.fromARGB(255, 255, 255, 255),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Expanded(
//                     child: Container(
//                       margin: EdgeInsets.fromLTRB(0, 0, 8, 4),
//                       // color: Colors.yellow,
//                       child: Image(
//                         image: AssetImage('assets\expl-2.jpg'),
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(
//                       margin: EdgeInsets.fromLTRB(0, 4, 8, 0),
//                       color: const Color.fromARGB(255, 52, 51, 42),
//                       child: Image(image: AssetImage('assets/4expl.jpg')),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 width: 250,
//                 height: 200,
//                 color: Colors.black,
//                 child: Image(
//                   image: AssetImage('assets/5expl-.jpg'),
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       Container(
//         margin: EdgeInsets.all(8),
//         width: double.infinity,
//         height: 200,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Container(
//               width: 250,
//               height: 200,
//               color: Colors.black,
//               child: Image(
//                 image: AssetImage('assets/5expl-.jpg'),
//                 fit: BoxFit.fill,
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 color: Color.fromARGB(255, 255, 255, 255),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Expanded(
//                       child: Container(
//                         margin: EdgeInsets.fromLTRB(8, 0, 0, 4),
//                         // color: Colors.yellow,

//              child: Image(
//                           image: AssetImage('assets/5expl-.jpg'),
//                           fit: BoxFit.fill,
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: Container(
//                         margin: EdgeInsets.fromLTRB(8, 4, 0, 0),
//                         color: const Color.fromARGB(255, 52, 51, 42),
//                         child:
//                             Image(image: AssetImage('assets/5expl-.jpg')),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       )
//     ],
//   );
// }

          
        
        
  