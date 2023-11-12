import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  const SquareTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image.asset(
        imagePath,
        height: 50,
      ),
    );
  }
}
