import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/theme.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
          ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.network(
                  'https://st3.depositphotos.com/12982378/33673/i/450/depositphotos_336731230-stock-photo-confident-young-woman-holding-digital.jpg')),
          SizedBox(
            height: 50,
          ),
          Card(
            elevation: 50,
            color: Colors.red,
            shadowColor: Colors.green,
            surfaceTintColor: Colors.amberAccent,
            clipBehavior: Clip.none,
            child: SizedBox(
              height: 70,
              width: 400,
            ),
          ),
        ],
      ),
    );
  }
}
