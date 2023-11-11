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
  final screens = [
    EmptyScreen(title: 'Customer Care'),
    EmptyScreen(title: 'Invite Friends & Earn'),
    EmptyScreen(title: 'Coupon Quest'),
    NotificationScreen(),
    EmptyScreen(title: 'Return Creation Demo'),
    EmptyScreen(title: 'How To Return'),
    EmptyScreen(title: 'How Do I Redeem My Coupon?'),
    EmptyScreen(title: 'Terms & Conditions'),
    EmptyScreen(title: 'Promotions & Refunds Policy'),
    EmptyScreen(title: 'Fee & Payment'),
    EmptyScreen(title: 'Who We Are'),
    EmptyScreen(title: 'Join Our Team'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Account'),
        titleTextStyle: TextStyle(color: Color.fromARGB(255, 25, 22, 22)),
        backgroundColor: const Color.fromARGB(255, 233, 229, 229),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(10)),
            Row(
              children: [
                SizedBox(
                  width: 20,
                  height: 150,
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.person_outline_rounded,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: SizedBox(
                    height: 42,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Sign in/join'),
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
              ],
            ),
            ListView.separated(
              shrinkWrap: true,
                itemBuilder: (context,index)=>ListTile(
                 onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder:(context){
                          return screens[index];
                   }));
                   
                 },
                 trailing: Icon(Icons.arrow_forward_ios, size: 15,),iconColor: Colors.black,
                title: Text(
                  list[index],
                  style: TextStyle(fontSize: 15),
                ),
                ),
                
                separatorBuilder:(context,index)=>Divider(),
                itemCount: list.length),
          ],
        ),
      ),
    );
  }
}
