import 'package:ajio/widgets/widget.dart';
import 'package:flutter/material.dart';

class Trndpage extends StatelessWidget {
  const Trndpage({super.key});

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