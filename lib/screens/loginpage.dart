import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_catalog/rotes.dart';
import 'package:matcher/matcher.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView( 
      child: Column(
        children: [
        Image.asset(
          "assets/images/login_img.png",
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          "Welcome",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Column(
          children: [
            TextFormField(
                decoration: InputDecoration(
              hintText: "Enter username",
              labelText: "Username",
            )),
            TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter password",
                  labelText: "password",
                )),
            ElevatedButton(
                child: Text("Log in"),
                style: TextButton.styleFrom(maximumSize: Size(150, 40)),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                })
          ],
        )
      ]
      )
      ),
    );
  }
}
