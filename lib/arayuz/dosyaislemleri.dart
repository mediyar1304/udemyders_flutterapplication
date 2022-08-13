// ignore_for_file: unused_import, unnecessary_string_interpolations, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, await_only_futures, prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';
import 'package:path_provider/path_provider.dart';

class KayitIslemleri {
  // Uygulamanın dosya kayıt yolunu alıyoruz
  Future<String> get dosyaYolu async {
    final konum = await getApplicationDocumentsDirectory();
    return konum.path;
  }

// Dosyamızı oluşturuyoruz
  Future<File> get yerelDosya async {
    final yol = await dosyaYolu;
    return File("$yol/yenidosya.txt");
  }

  // Dosya okuma işlemleri
  Future<String> dosyaOku() async {
    try {
      final dosya = await yerelDosya;
      String icerik = await dosya.readAsStringSync();
      return icerik;
    } catch (h) {
      return "Dosya oluşturulurken hata oluştu: $h";
    }
  }

  // Dosyaya yazma işlemleri
  Future<File> dosyaYaz(String gIcerik) async {
    final dosya = await yerelDosya;
    return dosya.writeAsString("$gIcerik");
  }
}

class DosyaIslemleri extends StatefulWidget {
  final KayitIslemleri kayitIslemi;

  const DosyaIslemleri({super.key, required this.kayitIslemi});

  @override
  State<StatefulWidget> createState() => DosyaState();
}

class DosyaState extends State<DosyaIslemleri> {
  final yaziCtrl = TextEditingController();
  String veri = "";

  Future<File> veriKaydet() async {
    setState(() {
      veri = yaziCtrl.text;
    });
    return widget.kayitIslemi.dosyaYaz(veri);
  }

  @override
  void initState() {
    super.initState();
    widget.kayitIslemi.dosyaOku().then((String deger) {
      setState(() {
        veri = deger;
      });
    });
  }

  void veriOku() {
    widget.kayitIslemi.dosyaOku().then((String deger) {
      setState(() {
        veri = deger;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dosya İşlemleri",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Dosyaya yazmak istediğiniz veriyi buraya yazın",
            ),
            controller: yaziCtrl,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: RaisedButton(
                    color: Colors.green,
                    onPressed: veriKaydet,
                    child: Text(
                      " Kaydet",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: RaisedButton(
                    color: Colors.blue,
                    onPressed: veriOku,
                    child: Text(
                      " Oku",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text("$veri"),
            ),
          )
        ],
      ),
    );
  }
}
