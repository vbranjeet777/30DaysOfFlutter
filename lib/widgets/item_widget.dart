import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/theme.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({required Key key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 15),
      child: Container(
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: MyTheme.creameColor,
                    borderRadius: BorderRadius.circular(10.0)),
                padding: EdgeInsets.all(7),
                height: 110,
                width: 90,
                child: Image.asset(
                  item.image,
                ),
              ),
            ],
          ),
          height: 120,
          width: 100,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 253, 253, 252),
              borderRadius: BorderRadius.circular(10.0)),
          padding: EdgeInsets.all(5)),
    );

    //  ListTile(
    //   leading: Image.asset(
    //     item.image,
    //   ),
    //   title: Text(item.name),
    //   subtitle: Text(item.desc),
    //   trailing: Text(
    //     "\$${item.price}",
    //     textScaler: TextScaler.linear(1.5),
    //     style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
    //   ),
    // );
  }
}
