import 'package:flutter/material.dart';
// import 'package:projectuts/pages/login_page.dart';
import 'home_page.dart';

class PageIntro extends StatelessWidget {
  const PageIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            //logo
            Image(
              image: AssetImage('lib/images/logo.png'),
            ),

            const SizedBox(height: 30),
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
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            //start now button
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[700],
                ),
                child: const Center(
                  child: Text(
                    'Pergi Belanja',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                padding: const EdgeInsets.all(20),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
