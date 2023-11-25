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
        body: Padding(
        padding: const EdgeInsets.only(left: 10, top: 10),
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/footwear.jpg',
                          width: 150,
                        ),
                        const Text("shoe"),
                        const Text(
                          "Men Slim Fit Polo T-Shirt",
                          style: TextStyle(
                              color: Color.fromARGB(255, 185, 184, 184),
                              fontSize: 12),
                        ),
                        const Row(
                          children: [
                            Text(
                              "₹ 399 ",
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              " ₹ 699 ",
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: Color.fromARGB(255, 185, 184, 184),
                                  fontSize: 12),
                            ),
                            Text(
                              "50% off",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 185, 184, 184),
                                  fontSize: 12),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: const BorderSide(color: Colors.black),
                              ),
                              onPressed: () {},
                              child: const Icon(
                                Icons.delete_outline,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            ElevatedButton(
                                style: const ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Color.fromARGB(255, 50, 47, 47))),
                                onPressed: () {},
                                child: const Row(
                                  children: [
                                    Icon(Icons.shopping_bag_outlined),
                                    Text("Add to Bag")
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            
              Padding(padding: EdgeInsets.only(left: 10,top: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/jewellery.jpg',
                              width: 150,
                            ),
                            const Text("Jewellery"),
                            const Text(
                              "Women Fancy Jewellery",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 185, 184, 184),
                                  fontSize: 12),
                            ),
                            const Row(
                              children: [
                                Text(
                                  "₹ 299 ",
                                  style: TextStyle(fontSize: 13),
                                ),
                                Text(
                                  " ₹ 499 ",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      color: Color.fromARGB(255, 185, 184, 184),
                                      fontSize: 12),
                                ),
                                Text(
                                  "50% off",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 185, 184, 184),
                                      fontSize: 12),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    side: const BorderSide(color: Colors.black),
                                  ),
                                  onPressed: () {},
                                  child: const Icon(
                                    Icons.delete_outline,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                ElevatedButton(
                                    style: const ButtonStyle(
                                        backgroundColor: MaterialStatePropertyAll(
                                            Color.fromARGB(255, 50, 47, 47))),
                                    onPressed: () {},
                                    child: const Row(
                                      children: [
                                        Icon(Icons.shopping_bag_outlined),
                                        Text("Add to Bag")
                                      ],
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
      // body: Padding(padding: EdgeInsets.all(10),
      // child: SingleChildScrollView(
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //      children: [
      //         Padding(
      //           padding: const EdgeInsets.fromLTRB(3, 5, 0, 8),
      //           child: Text(
      //             'My Wishlist',
      //             style: TextStyle(
      //               fontSize: 20,
      //               fontWeight: FontWeight.bold,
      //             ),
      //           ),
      //         ),
      //         GridView.builder(
      //           physics: NeverScrollableScrollPhysics(),
      //         //  itemCount: wishList.length,
      //           shrinkWrap: true,
      //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //               childAspectRatio: 5 / 10,
      //               crossAxisCount: 2,
      //               crossAxisSpacing: 10,
      //               mainAxisSpacing: 10),
      //           itemBuilder: (context, index) {
      //            // return wishList[index];
      //           },
      //         )
      //      ],
      //   ),
      // ),
//       // ),
//     );
//   }
// }
