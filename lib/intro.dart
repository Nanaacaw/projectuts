import 'package:flutter/material.dart';

class PageIntro extends StatelessWidget {
  const PageIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(children: [
        //logo
        Image(
          image: AssetImage('lib/images/logo.png'),
        ),

        SizedBox(height: 35),
        //title
        Text(
          'Shoe.co',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 35),
        //sub title

        //start now button
      ]),
    );
  }
}
