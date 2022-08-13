// ignore_for_file: prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class DegisenWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyPageState();
}

class MyPageState extends State<DegisenWidget> {
  int degisenSayi = 0;

  void sayiyiArtir() {
    setState(() {
      degisenSayi++;
    });
  }

  void sayiyiAzalt() {
    setState(() {
      degisenSayi--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful - Stateless Dersi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              color: Colors.green,
              onPressed: sayiyiArtir,
              child: Text("Sayıyı Artır"),
            ),
            Text(
              "Değişebilen Sayı = $degisenSayi",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 20,
                color: degisenSayi < 0 ? Colors.red : Colors.green,
              ),
            ),
            FlatButton(
              color: Colors.red,
              onPressed: sayiyiAzalt,
              child: Text("Sayıyı Azalt"),
            ),
          ],
        ),
      ),
    );
  }
}
