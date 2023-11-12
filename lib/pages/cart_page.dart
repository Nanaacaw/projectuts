import 'package:flutter/material.dart';
import 'package:projectuts/models/cart.dart';
import 'package:projectuts/models/shoe.dart';
import 'package:projectuts/components/cart_items.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading
            Text(
              'My Cart',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  // get shoe individual
                  Shoe individualShoe = value.getUserCart()[index];

                  // return keranjang items
                  return CartItem(
                    shoe: individualShoe,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
