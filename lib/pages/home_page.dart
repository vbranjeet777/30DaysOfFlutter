import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Ranjeet";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Catalog App", style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Container(
          child: Text("$days days of flutter $name"),
        ),
      ),
      drawer: Mydrawer(),
    );
  }
}
