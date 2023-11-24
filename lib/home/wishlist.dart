import 'package:flutter/material.dart';

class wishlist extends StatelessWidget {
   wishlist({super.key});
  final wish=[
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('wishlist'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
      ),
      body: Padding(padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(3, 5, 0, 8),
                child: Text(
                  'My Wishlist',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
              //  itemCount: wishList.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 5 / 10,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                 // return wishList[index];
                },
              )
           ],
        ),
      ),
      ),
    );
  }
}
