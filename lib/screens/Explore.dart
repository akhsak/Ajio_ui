import 'package:ajio/widgets/widget.dart';
import 'package:flutter/material.dart';

class Explorepage extends StatelessWidget {
  const Explorepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          buildAppbar(),
          SingleChildScrollView(
           scrollDirection:Axis.horizontal ,
          )
          
        ],
        
      ) ,
    );
  }
}