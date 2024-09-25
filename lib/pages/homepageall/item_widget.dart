import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/utils/theme.dart';

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
                height: 120,
                width: 100,
                child: Image.asset(
                  item.image,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    item.desc,
                    style: TextStyle(color: Colors.black45),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${item.price}",
                        textScaler: TextScaler.linear(1.5),
                        style: TextStyle(
                            //color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, MyRoutes.homeDetailsRoutes);
                        },
                        child: Text(
                          "Buy",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: ButtonStyle(
                            //shape: WidgetStatePropertyAll(),
                            //iconSize: WidgetStatePropertyAll(1.0),
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.deepPurple)),
                      ),
                      //Padding(padding: EdgeInsets.only(right: 0.1))
                    ],
                  ),
                ],
              )),
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
