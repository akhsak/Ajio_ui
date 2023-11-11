import 'package:flutter/material.dart';
import 'package:ajio/home/empty.dart';
import 'package:ajio/home/notification.dart';

class Accountpage extends StatelessWidget {
  Accountpage({super.key});

  final list = [
    'Customer Care',
    'Invite Friends & Earn',
    'Coupon Quest',
    'Notification',
    'Return Creation Demo',
    'How To Return',
    'How Do I Redeem My Coupon?',
    'Terms & Conditions',
    'Promotions & Refunds Policy',
    'Fee & Payment',
    'Who We Are',
    'Join Our Team'
  ];
  //  final screens = [
  //   NotificationScreen(),
  //  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('My Account'),
        titleTextStyle: TextStyle(color: Color.fromARGB(255, 25, 22, 22)),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(10)),
            Container(
              color: Color.fromARGB(255, 238, 233, 233),
              child: Row(
                children: [               
                  SizedBox(
                    width: 20,
                    height: 150,
                  ),
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.person_outline_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 70,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Sign in/ join'),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.black),
                              shape:
                                  MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ))),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => NotificationScreen())));
                        // Navigator.push(context, MaterialPageRoute(builder:(context){
                        //       //  return screens[index];
                        //  }));
                      },
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                      iconColor: Colors.black,
                      title: Text(
                        list[index],
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                separatorBuilder: (context, index) => Divider(),
                itemCount: list.length),
                SizedBox(
                  height: 10,
                  width: 50,
                ),
                Text('version 9.4.0 Build 3085',style: TextStyle(color: Color.fromARGB(255, 148, 146, 146)),),
                SizedBox(
                  height: 10,
                )
          ],
        ),
      ),
    );
  }
}
