import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/theme.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Catalog App",
          style: TextStyle(
              color: (MyTheme.darkBluishColor),
              fontWeight: FontWeight.bold,
              fontSize: 35),
        ),
        Text(
          "Trending Products",
          style: TextStyle(
              fontSize: 18,
              //fontWeight: FontWeight.bold,
              color: MyTheme.darkBluishColor),
        )
      ],
    );
  }
}