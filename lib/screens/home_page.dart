import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  final int days = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Catalog App"),
      ) ,
        body: Center(
      child: Container(
        child: Text("welcome to the app made in $days days workshop"),
      ),
    ),
    drawer: Drawer(),
    );
  }
}
