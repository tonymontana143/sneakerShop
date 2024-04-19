import 'package:flutter/material.dart';

import 'shoes.dart';

class Shop extends ChangeNotifier {
  //food menu
  final List<Sneakerss> _snekaerMenu = [
    Sneakerss(
      name: 'Nike Air Max',
      price: '21.00',
      imagePath: 'images/free-icon-shoe-14459230.png',
      rating: "4.9",
    ),
    Sneakerss(
      name: 'Reebok C220',
      price: '23.00',
      imagePath: 'images/free-icon-shoe-14459691.png',
      rating: "4.3",
    ),
    Sneakerss(
      name: 'Puma sued 100',
      price: '22.00',
      imagePath: 'images/free-icon-sneakers-14459483.png',
      rating: "4.7",
    ),
  ];
  //customer cart
  final List<Sneakerss> _cart = [];
  //getter methods

  List<Sneakerss> get sneakerMenu => _snekaerMenu;
  List<Sneakerss> get cart => _cart;
  //add to cart
  void addToCart(Sneakerss sneakerItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(sneakerItem);
    }
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(Sneakerss sneak) {
    _cart.remove(sneak);
    notifyListeners();
  }
}
