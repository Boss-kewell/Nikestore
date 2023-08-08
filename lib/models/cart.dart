import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {

  // list of shoes for sale
  List<Shoe> shoeShop =[
    Shoe(
      name: 'Colourful Shoes',
        price: '236',
        description: 'No expectations, no rules. ',
        imagePath: 'assets/images/ColourfulShoes.jpg',
    ),
    Shoe(
      name: 'Adidas Shoes',
        price: '220',
        description:
        'Comfortable Shoes That match all of life moves.',
        imagePath: 'assets/images/AdidasShoes.jpg',
    ),
    Shoe(
      name: 'Fast Shoes',
      price: '240',
      description:
      'Daily sneakers with the comfort and style to push through any grind.',
      imagePath: 'assets/images/FastShoes.jpg',
    ),
    Shoe(
      name: 'Cloud Foam',
      price: '190',
      description:
      'Everyday Sneakers With a Sophisticated Shimmer.',
      imagePath: 'assets/images/CloudFoam.jpg',
    ),
  ];

  // list of items in user cart
List<Shoe> userCart =[];

  // get list of shoes for sale
List<Shoe> getShoeList() {
  return shoeShop;
}

  // get cart
List<Shoe> getUsercart() {
  return userCart;
}

  // add items to cart
void addItemToCart(Shoe shoe) {
userCart.add(shoe);
notifyListeners();
}

  // remove items from cart
void removeItemFromCart(Shoe shoe) {
  userCart.remove(shoe);
  notifyListeners();
}
  }