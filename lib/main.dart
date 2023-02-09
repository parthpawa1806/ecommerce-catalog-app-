import 'package:flutter/material.dart';
import 'package:flutter_catalog/rotes.dart';
import 'package:flutter_catalog/screens/cartPage.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/loginpage.dart';
import 'screens/home_page.dart';
import 'package:flutter/widgets.dart';
import 'widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context) ,
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
       initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => homepage(),
        MyRoutes.logInRoute:(context) => LoginPage(),
        MyRoutes.cartPageRoute:(context) => CartPage(),

      },
    );
  }
}
