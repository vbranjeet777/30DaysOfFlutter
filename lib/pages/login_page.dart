import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/login_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 25.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "UserName", labelText: "EnterUserName"),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Password", labelText: "EnterPassword"),
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                      child: Text("Login"),
                      style: TextButton.styleFrom(
                          minimumSize: Size(120, 40),
                          backgroundColor: Colors.amberAccent),
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoutes);
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
