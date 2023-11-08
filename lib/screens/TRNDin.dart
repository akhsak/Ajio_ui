import 'package:ajio/widgets/widget.dart';
import 'package:flutter/material.dart';

class trndpage extends StatelessWidget {
  const trndpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BuildAppbar(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
          )
        ],
      ),
    );
   
  }
}