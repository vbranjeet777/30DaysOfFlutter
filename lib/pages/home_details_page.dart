import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailsPage extends StatelessWidget {
  const HomeDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Products Details",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: MyTheme.creameColor,
      body: SafeArea(
        child: Column(
          children: [
            Image.asset("assets/iphone.webp").p16(),
            Expanded(
                child: Container(
              color: Colors.red,
            ))
          ],
        ),
      ),
    );
  }
}
