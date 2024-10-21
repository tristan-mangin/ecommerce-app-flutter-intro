import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'BLUE',
      price: '200',
      description: 'Something',
      imagePath: 'lib/images/blue.png',
    ),
    Shoe(
      name: 'RED',
      price: '200',
      description: 'Something',
      imagePath: 'lib/images/red.png',
    ),
    Shoe(
      name: 'BROWN',
      price: '200',
      description: 'Something',
      imagePath: 'lib/images/brown.png',
    ),
  ];

  // List of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
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
