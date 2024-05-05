import 'package:flutter/material.dart';
import 'package:sneaker_app/models/shoe.dart';

class Cart extends ChangeNotifier{
  //list of shoe for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom FREK', 
      price: '236', 
      description: 'The forward thinking design of his latest signature shoe',
      imagePath: 'lib/images/ZoomFreak.png', 
    ),
     Shoe(
      name: 'Air Jordans', 
      price: '206', 
      description: 'The forward thinking design of his latest signature shoe',
      imagePath: 'lib/images/AirJordan.png', 
    ),
     Shoe(
      name: 'KD Treya', 
      price: '240', 
      description: 'The forward thinking design of his latest signature shoe',
      imagePath: 'lib/images/KDTREY.png', 
    ),
     Shoe(
      name: 'kyrie 6', 
      price: '220', 
      description: 'The forward thinking design of his latest signature shoe',
      imagePath: 'lib/images/Kyrie.png', 
    ),
      
  ];
  //list of items in user cart
  List<Shoe>userCart = [];

  //get list of shoe for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //delete item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}