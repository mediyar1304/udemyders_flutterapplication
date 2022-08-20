// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'dart:convert';

class LocalJsonKonusu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LocalState();
}

class LocalState extends State<LocalJsonKonusu> {
  late List ogrenciler;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Local Json Konusu",
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(
          20.0,
        ),
        child: Center(
          child: FutureBuilder(
            future: DefaultAssetBundle.of(context).loadString(
              "assets/veriler/sinif.json",
            ),
            builder: (context, cevap) {
              var ogrenci = jsonDecode(cevap.data.toString());
              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Okul No: " + ogrenci[index]['okulno'],
                        ),
                        Text(
                          "Adı: " + ogrenci[index]['adi'],
                        ),
                        Text(
                          "Soyadı: " + ogrenci[index]['soyadi'],
                        ),
                        Text(
                          "Cinsiyet: " + ogrenci[index]['cinsiyet'],
                        ),
                      ],
                    ),
                  );
                },
                itemCount: ogrenci == null ? 0 : ogrenci.length,
              );
            },
          ),
        ),
      ),
    );
  }
}
