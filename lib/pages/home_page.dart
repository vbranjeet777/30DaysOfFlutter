import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';
import 'package:flutter_catalog/widgets/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Ranjeet";
    final dummyList = List.generate(200, (index) => CatalogModels.items[0]);
    return Scaffold(
      backgroundColor: MyTheme.creameColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 20, left: 15, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  //height: 600,
                  padding: EdgeInsets.all(10.0),
                  child: Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: dummyList.length,
                      itemBuilder: (context, index) {
                        return ItemWidget(
                          item: dummyList[index],
                          key: ValueKey("a"),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // appBar: AppBar(
      //   title: Text(
      //     "Catalog App",
      //   ),
      // ),

      // drawer: Mydrawer(),
    );
  }
}

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
