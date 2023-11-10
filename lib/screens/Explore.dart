import 'package:ajio/widgets/widget.dart';
import 'package:flutter/material.dart';

class Explorepage extends StatefulWidget {
  const Explorepage({super.key});

  @override
  State<Explorepage> createState() => _ExplorepageState();
}

class _ExplorepageState extends State<Explorepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(8),
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 390,
                    height: 270,
                    child: Image(
                      image: AssetImage('assets/fashionjpg.PNG'),
                      fit: BoxFit.fill,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}
  
      
    