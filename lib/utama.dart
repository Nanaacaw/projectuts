import 'package:flutter/material.dart';
import './pages/cart.dart';
import './pages/account.dart';
import './pages/home.dart';

class Utama extends StatefulWidget {
  const Utama({super.key});

  @override
  State<Utama> createState() => _UtamaState();
}

class _UtamaState extends State<Utama> {
  int selectedIndex = 0;
  List<Widget> wg = [
    Cart(),
    Home(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: wg[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        selectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        backgroundColor: Colors.deepPurple.shade400,
        onTap: (value) => setState(() {
          selectedIndex = value;
        }),
      ),
    );
  }
}
