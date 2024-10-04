import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/theme.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creameColor,
      appBar: AppBar(
        backgroundColor: MyTheme.creameColor,
        title: Text(
          "Cart",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Text.rich(TextSpan(
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                children: <InlineSpan>[
                  TextSpan(
                    text: "Rajs ",
                    style: TextStyle(fontSize: 40, color: Colors.red),
                  ),
                  TextSpan(text: "Noni")
                ])),
          ),
          Icon(
            Icons.favorite_border_outlined,
            size: 50,
            color: Colors.red,
            
          ),
        ],
      ),
    );
  }
}
