// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// class homewidget extends StatelessWidget {
//   const homewidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//       body:SingleChildScrollView(
//        child: Row(
//         children: [
//           SizedBox(
//             width: 10,
//           ),
//           IconButton(onPressed: (){}, icon: Icon(Icons.home),color: Colors.black,),
//           CircleAvatar(backgroundImage:
//            NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0i_qle6DMAZBx_J2WMDc0d94Lch1eaX7zbQ&usqp=CAU',),
//            ),
//         ],
//        ),
//       ) ,
//     );
//   }
// }
import 'package:flutter/material.dart';

Widget BuildAppbar(){
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
              icon: Icon(Icons.shopping_bag_sharp),
              color: Color.fromARGB(255, 25, 21, 21)),
        ],
        
        
      );
      
    


}
