import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/homepageall/cart_page.dart';
import 'package:flutter_catalog/pages/homepageall/home_details_page.dart';
import 'package:flutter_catalog/pages/homepageall/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/utils/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.darkTheme(context),
        initialRoute: MyRoutes.homeRoutes,
        routes: {
          "/": (context) => LoginPage(),
          MyRoutes.homeRoutes: (context) => HomePage(),
          MyRoutes.loginRoutes: (context) => LoginPage(),
          MyRoutes.homeDetailsRoutes: (context) => HomeDetailsPage(),
          MyRoutes.cartRoutes: (context) => CartPage(),
        });
  }
}
