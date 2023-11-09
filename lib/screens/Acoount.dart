import 'package:flutter/material.dart';

class Accountpage extends StatelessWidget {
  const Accountpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Account'),
        titleTextStyle: TextStyle(color: Colors.black),
        backgroundColor: const Color.fromARGB(255, 233, 229, 229),
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 20,
                height: 150,
              ),
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.black,
              ),
              SizedBox(
                width: 100,
              ),
            ElevatedButton(onPressed: (){}, 
            child: Text('sign out'),style:
             ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.black),),),
            ],
            
          ),
          SizedBox(
            width: 10,
          ),
        //  Expanded(
        //   child: ListView.separated(
        //     itemBuilder: itemBuilder, 
        //     separatorBuilder: separatorBuilder, 
        //     itemCount: itemCount)),
        ],

        
      ),
      
      
      
      
    );
  }
}
