// ignore_for_file: unused_import, prefer_const_constructors, use_key_in_widget_constructors, body_might_complete_normally_nullable, deprecated_member_use, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

class AlertVeTextField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AlertState();
}

class AlertState extends State<AlertVeTextField> {
  final yaziKontrolcusu = TextEditingController();
  final genelKontrolcu = GlobalKey<FormState>();

  @override
  void dispose() {
    yaziKontrolcusu.dispose();
    super.dispose();
  }

  void selamla() {
    if (genelKontrolcu.currentState!.validate()) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return AlertDialog(
              title: Text("Selamlama Metnimiz"),
              content: SingleChildScrollView(
                child: ListBody(
                  children: [
                    Text("Merhaba ${yaziKontrolcusu.text}"),
                    Text("Sizi sistemimiz adına selamlıyorum"),
                  ],
                ),
              ),
              actions: [
                FlatButton(
                  child: Text("Tamam"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TextField ve AlertView Kullanımı",
        ),
      ),
      body: Form(
        key: genelKontrolcu,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (yazi) {
                  if (yazi!.isEmpty) {
                    return "Lütfen bu kısmı boş bırakmayın";
                  }
                },
                controller: yaziKontrolcusu,
                decoration: InputDecoration(
                  hintText: "Lütfen isminizi yazınız",
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: RaisedButton(
                    color: Colors.lime,
                    onPressed: selamla,
                    child: Text(
                      "Selamla",
                      style: TextStyle(
                        color: Colors.deepPurple,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
