import 'package:projectuts/models/shoe.dart';

class Cart {
  // list sepatu yang dijual
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Yeezy Boost Butter',
      price: '549',
      imagePath: 'lib/images/yeezy.jpg',
      desc:
          'The YEEZY BOOST 350 V2 features an upper composed of re-engineered Primeknit',
    ),
    Shoe(
      name: 'Adidas Yeezy Slide',
      price: '100',
      imagePath: 'lib/images/Slides.jpg',
      desc: 'The hedon sandals from adidas',
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
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}
