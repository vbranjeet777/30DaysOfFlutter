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
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(padding: EdgeInsets.only(left: 20)),
            Text(
              "999",
              textScaler: TextScaler.linear(1.5),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Padding(
                padding: EdgeInsets.only(left: 150.0, bottom: 80.0, right: 50)),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                " Buy ",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.deepPurple)),
            ),
            //Padding(padding: EdgeInsets.only(right: 0.1))
          ],
        ),
      ),
      backgroundColor: MyTheme.creameColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 15)),
            Image.asset("assets/iphone.webp").h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                edge: VxEdge.top,
                arcType: VxArcType.convey,
                child: Container(
                  width: context.screenWidth,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text(
                        "iPhone 12 Pro",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Details of iPhone 12 pro",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )
                    ],
                  ).py64(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
