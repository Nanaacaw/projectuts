import 'package:flutter/material.dart';
import 'package:projectuts/models/shoe.dart';
import 'package:projectuts/packages/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // menampilkan search bar
        Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Search',
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search_rounded,
                color: Colors.grey,
              ),
            ],
          ),
        ),

        // pesan
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            'Eksplorasi Gaya Baru, Temukan Sepatumu di Aplikasi Kami!',
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
        ),

        // hot deals
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Hot Picks 🔥',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                'See all',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(
          height: 10,
        ),

        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              // info mengenai sepatu
              Shoe shoe = Shoe(
                  name: "Adidas Samba",
                  price: "210",
                  imagePath: 'lib/images/samba.jpg',
                  desc: 'Born on the soccer field, street style');
              return ShoeTile(
                shoe: shoe,
              );
            },
          ),
        ),
        Divider(
          color: Colors.white,
        )
      ],
    );
  }
}
