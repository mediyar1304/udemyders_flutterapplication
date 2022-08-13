// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, non_constant_identifier_names, unused_local_variable, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SharedKonusu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SharedState();
}

class SharedState extends State<SharedKonusu> {
  final isimCtrl = TextEditingController();
  final soyisimCtrl = TextEditingController();
  final genelCtrl = GlobalKey<FormState>();

  String isimStr = "";
  String soyisimStr = "";
  bool kayit_durumu = false;
  int kayit_no = 0;

  @override
  void dispose() {
    isimCtrl.dispose();
    soyisimCtrl.dispose();
    super.dispose();
  }

  void kayitYap(String g_isim, String g_soyisim) async {
    final kayitAraci = await SharedPreferences.getInstance();

    if (genelCtrl.currentState!.validate()) {
      kayitAraci.setBool("durum", true);
      kayitAraci.setInt("kayitno", 1);
      kayitAraci.setString("isim", g_isim);
      kayitAraci.setString("soyisim", g_soyisim);

      Fluttertoast.showToast(
        msg: "Kayıt başarılı bir şekilde gerçekleşti",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
      );
    }
  }

  void kayitGoster() async {
    final kayitAraci = await SharedPreferences.getInstance();

    bool? k_durum = kayitAraci.getBool("durum");
    int? k_no = kayitAraci.getInt("kayitno");
    String? k_isim = kayitAraci.getString("isim");
    String? k_soyisim = kayitAraci.getString("soyisim");

    setState(() {
      kayit_durumu = k_durum!;
      kayit_no = k_no!;
      isimStr = k_isim!;
      soyisimStr = k_soyisim!;
    });

    Fluttertoast.showToast(
      msg: "Kayıt başarılı bir şekilde gösterildi",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
    );
  }

  void kayitSil() async {
    final kayitAraci = await SharedPreferences.getInstance();

    // Tüm kayıtları silmek için ==> kayitAraci.clear();

    // İstediğimiz Kayıtları silmek için
    kayitAraci.remove("durum");
    kayitAraci.remove("kayitno");
    kayitAraci.remove("isim");
    kayitAraci.remove("soyisim");

    Fluttertoast.showToast(
      msg: "Kayıt başarılı bir şekilde silindi",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shared Preferences Kullanımı",
        ),
      ),
      body: Form(
        key: genelCtrl,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (deger) {
                  if (deger!.length < 3) {
                    return "Lütfen isminizi en az 3 harfle yazın";
                  }
                },
                controller: isimCtrl,
                decoration: InputDecoration(
                  hintText: "İsminizi Girin",
                ),
              ),
              TextFormField(
                validator: (deger) {
                  if (deger!.length < 3) {
                    return "Lütfen soyisminizi en az 3 harfle yazın";
                  }
                },
                controller: soyisimCtrl,
                decoration: InputDecoration(
                  hintText: "Soyisminizi Girin",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: RaisedButton(
                      color: Colors.green,
                      child: Text(
                        "Kaydet",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () => kayitYap(
                        isimCtrl.text,
                        soyisimCtrl.text,
                      ),
                    ),
                  )),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: RaisedButton(
                      color: Colors.blue,
                      child: Text(
                        "Getir",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () => kayitGoster(),
                    ),
                  )),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: RaisedButton(
                      color: Colors.red,
                      child: Text(
                        "Sil",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () => kayitSil(),
                    ),
                  )),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("İsim : $isimStr"),
                      Text("Soyisim : $soyisimStr"),
                      Text("Kayıt Durumu : $kayit_durumu"),
                      Text("Kayıt Numarası : $kayit_no"),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
