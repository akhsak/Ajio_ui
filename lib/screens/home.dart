import 'package:ajio/widgets/widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         BuildAppbar(),
         SingleChildScrollView(
          scrollDirection: Axis.horizontal,
         ),
         
        ],
      ),
    );
  }
}