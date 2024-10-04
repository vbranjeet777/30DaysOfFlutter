import 'package:flutter/material.dart';

class P_material_App extends StatelessWidget {
  const P_material_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
          child: RichText(
              text: TextSpan(
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.amberAccent),
                  children: <InlineSpan>[
            TextSpan(text: "Rajaa"),
            TextSpan(text: "kumar"),
          ]))),
    );
  }
}
