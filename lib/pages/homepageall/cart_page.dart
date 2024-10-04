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
      body: Center(
          child: RichText(
              text: TextSpan(
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                  children: <InlineSpan>[
            TextSpan(
                text: "Ranjeet ",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent)),
            TextSpan(
              text: "Kushwaha",
            ),
          ]))),
    );
  }
}
