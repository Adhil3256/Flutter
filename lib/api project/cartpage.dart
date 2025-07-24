import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ProviderClass.dart';
class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {

  @override
  Widget build(BuildContext context) {
    final cartObj=Provider.of<ProviderClass>(context);
    return Scaffold(
      body: Column(
        children: [
          Text(cartObj.cartProducts[0]["id"].toString())
        ],
      ),
    );
  }
}
