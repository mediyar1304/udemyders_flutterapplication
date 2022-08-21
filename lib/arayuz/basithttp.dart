// ignore_for_file: unused_import, prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_typing_uninitialized_variables, sort_child_properties_last, avoid_print

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BasitHttp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HttpState();
}

class HttpState extends State<BasitHttp> {
  var veri;

  getIslemiYap() {
    print("get butonunu denediniz");
  }

  postIslemiYap() {
    print("get butonunu denediniz");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Basit Http İşlemleri",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: RaisedButton(
                  child: Text(
                    "GET",
                  ),
                  onPressed: getIslemiYap,
                ),
              ),
              Expanded(
                child: RaisedButton(
                  child: Text(
                    "POST",
                  ),
                  onPressed: postIslemiYap,
                ),
              ),
            ],
          ),
          Expanded(
            child: Center(
              child: Text(
                "Gelen veri",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
