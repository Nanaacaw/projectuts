import 'package:flutter/material.dart';

class PageIntro extends StatelessWidget {
  const PageIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(children: [
        //logo
        Image(
          image: AssetImage('lib/images/logo.png'),
        ),

        SizedBox(height: 20),
        //title
        Text(
          'Shoe.co',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 18),
        //sub title
        Center(
          child: Text(
            'Menyediakan Gaya Sepatu yang Tidak Pernah Usang, Langkah penuh gaya bersama Shoe.co',
            style:
                TextStyle(fontStyle: FontStyle.italic, color: Colors.grey[600]),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 80,
        ),
        //start now button
        Container(
          child: Center(
            child: Text(
              'Pergi Belanja',
              style: TextStyle(color: Colors.white),
            ),
          ),
          padding: EdgeInsets.all(18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey[700],
          ),
        )
      ]),
    );
  }
}
