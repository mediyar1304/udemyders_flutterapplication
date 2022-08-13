// ignore_for_file: unused_import, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ImageView Kullanımı ",
        ),
      ),
      body: ListView(
        children: [
          Text(
            "Assets klasör içindeki resmi kullanma",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          Image.asset(
            "assets/images/lake.jpg",
          ),
          Text(
            "İnternetteki resmi kullanma",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          Image.network(
            "https://iadsb.tmgrup.com.tr/39fd82/1200/627/0/0/1326/693?u=https://idsb.tmgrup.com.tr/2019/04/28/ancient-akdamar-church-on-lake-van-worth-a-trip-to-eastern-anatolia-1556478157686.jpg",
          ),
          Text(
            "İnternetteki resmi placeholder ile kullanma",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          FadeInImage.assetNetwork(
            placeholder: "assets/images/loading.gif",
            image:
                "https://images.wallpapersden.com/image/download/4k-talking-to-the-moon_a2pubmuUmZqaraWkpJRmbmdlrWZlbWVmZmlt.jpg",
          ),
        ],
      ),
    );
  }
}
