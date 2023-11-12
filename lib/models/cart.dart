import 'package:flutter/material.dart';
import 'package:projectuts/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list sepatu yang dijual
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Yeezy Boost Butter',
      price: '549',
      imagePath: 'lib/images/yeezy.jpg',
      desc: 'The YEEZY BOOST 350 V2 feat butter color.',
    ),
    Shoe(
      name: 'Adidas Yeezy Slide',
      price: '100',
      imagePath: 'lib/images/Slides.jpg',
      desc: 'The hedon sandals from adidas with aesthetic sole',
    ),
    Shoe(
      name: 'Nike Air Force 1',
      price: '150',
      imagePath: 'lib/images/airforce1.png',
      desc: 'The basket style with air sole unit and white color',
    ),
    Shoe(
      name: 'Jordan 1 Black High',
      price: '222',
      imagePath: 'lib/images/jordanBlack.png',
      desc: 'This Jordan 1 Black High is for style fashion.',
    ),
  ];

  // list item sepatu yang ada di users cart
  List<Shoe> userCart = [];
  // get list sepatu yang dijual
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart nya
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items ke cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
