// ignore_for_file: unused_import, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as baglanti;
import 'dart:convert';

class JsonKonusu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Basit Json Konusu",
        ),
      ),
      body: Center(),
    );
  }
}
