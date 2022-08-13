// ignore_for_file: unused_import, avoid_web_libraries_in_flutter, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:udemy_application/arayuz/alertvetext.dart';
import 'package:udemy_application/arayuz/dosyaislemleri.dart';
import 'package:udemy_application/arayuz/imageview.dart';
import 'package:udemy_application/arayuz/jsonkonusu.dart';
import 'package:udemy_application/arayuz/sharedkonusu.dart';
import 'arayuz/ilksayfa.dart';
import './arayuz/hello.dart';
import 'arayuz/merhaba.dart';
import 'arayuz/degisenwidget.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => Merhaba(),
        "/ilksayfa": (context) => IlkSayfa(title: " İlk Sayfamız"),
        "/hello": (context) => Hello(),
        "/degisenWidget": (context) => DegisenWidget(),
        "/imageview": (context) => ImageView(),
        "/alertvetextfield": (context) => AlertVeTextField(),
        "/sharedkonusu": (context) => SharedKonusu(),
        "/dosyakonusu": (context) => DosyaIslemleri(
              kayitIslemi: KayitIslemleri(),
            ),
        "/jsonkonusu": (context) => JsonKonusu(),
      },
    ),
  );
} 

  /* Orta Seviye Konuları */
  // Routes - Rotalar
  // Gesture Dedector - Ekran Etkileimleri 

  // State - Durum   less - olumsuz    
  // Stateless - Durumsuz ==> uygulama boyunca değişmeyecek widgetler
  // Stateful - Duruma göre değişebilen widgetler

  // MVC - Model View Controller
