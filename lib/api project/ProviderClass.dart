import 'package:flutter/material.dart';
class ProviderClass with ChangeNotifier {
  List<Map<String, dynamic>> cartProducts = [];

  List<Map<String, dynamic>> get cartItems => cartProducts;

  List<Map<String, dynamic>> cartitems1() {
    return cartProducts;
  }

  int get pdtCount => cartProducts.length;

  void addtoCart(Map<String, dynamic> pdt) {
    cartProducts.add(pdt);
    cartProducts.length++;
    notifyListeners();
  }

}





