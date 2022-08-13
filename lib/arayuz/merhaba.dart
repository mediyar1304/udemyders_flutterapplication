// ignore_for_file: avoid_print, use_key_in_widget_constructors, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Merhaba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent.shade100,
      appBar: AppBar(
        title: Text("Whatsapp"),
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            tooltip: "Arama",
            onPressed: () => debugPrint(" Arama "),
          ),
          IconButton(
            icon: Icon(Icons.playlist_add_circle),
            tooltip: "Listeler",
            onPressed: () => Navigator.pushNamed(context, "/ilksayfa"),
          ),
          IconButton(
            icon: Icon(
              Icons.share,
            ),
            tooltip: "Paylaş",
            onPressed: () => print(" Paylaş "),
          ),
        ],
      ),
      body: Center(
        child: GridView.count(
          primary: false,
          crossAxisSpacing: 10.0,
          crossAxisCount: 2,
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/jsonkonusu"),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://pub.dev/static/hash-t0ljt5cj/img/ff-banner-desktop-2x.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  margin: EdgeInsets.all(5.0),
                  alignment: Alignment.bottomCenter,
                  child: Transform(
                    alignment: Alignment.bottomCenter,
                    transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                    child: Container(
                      height: 45,
                      width: double.infinity,
                      color: Color(0xCDFFFFFF),
                      padding: const EdgeInsets.all(8.0),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        "Basit Json İşlemleri \n   Sayfasına Git ",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/dosyakonusu"),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://pub.dev/static/hash-t0ljt5cj/img/ff-banner-desktop-2x.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  margin: EdgeInsets.all(5.0),
                  alignment: Alignment.bottomCenter,
                  child: Transform(
                    alignment: Alignment.bottomCenter,
                    transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                    child: Container(
                      height: 45,
                      width: double.infinity,
                      color: Color(0xCDFFFFFF),
                      padding: const EdgeInsets.all(8.0),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        "Dosya İşlemleri \n   Sayfasına Git ",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/sharedkonusu"),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://iadsb.tmgrup.com.tr/39fd82/1200/627/0/0/1326/693?u=https://idsb.tmgrup.com.tr/2019/04/28/ancient-akdamar-church-on-lake-van-worth-a-trip-to-eastern-anatolia-1556478157686.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  margin: EdgeInsets.all(5.0),
                  alignment: Alignment.bottomCenter,
                  child: Transform(
                    alignment: Alignment.bottomCenter,
                    transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                    child: Container(
                      height: 45,
                      width: double.infinity,
                      color: Color(0xCDFFFFFF),
                      padding: const EdgeInsets.all(8.0),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        "Shared Preferences \n  Kullanımı Sayfasına Git ",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
                onTap: () {
                  Fluttertoast.showToast(
                    msg: "Bu öğeye bir defa tıkladınız!",
                    toastLength: Toast.LENGTH_LONG,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.black,
                    textColor: Colors.white,
                  );
                },
                onDoubleTap: () {
                  Fluttertoast.showToast(
                    msg: "Bu öğeye iki defa tıkladınız!",
                    toastLength: Toast.LENGTH_LONG,
                    gravity: ToastGravity.CENTER,
                    backgroundColor: Colors.white,
                    textColor: Colors.black,
                  );
                },
                onLongPress: () {
                  Fluttertoast.showToast(
                    msg: "Bu öğeye uzun tıkladınız!",
                    toastLength: Toast.LENGTH_LONG,
                    gravity: ToastGravity.TOP,
                    backgroundColor: Colors.blue,
                    textColor: Colors.yellow,
                  );
                },
                child: Card(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/toast.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    margin: EdgeInsets.all(5.0),
                    alignment: Alignment.bottomCenter,
                    child: Transform(
                      alignment: Alignment.bottomCenter,
                      transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                      child: Container(
                        height: 45,
                        width: double.infinity,
                        color: Color(0xCDFFFFFF),
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.bottomCenter,
                        child: const Text(
                          "Toast Mesajı \n  Örnekleri ",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                )),
            GestureDetector(
                onTap: () => Navigator.pushNamed(context, "/alertvetextfield"),
                child: Card(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://iadsb.tmgrup.com.tr/39fd82/1200/627/0/0/1326/693?u=https://idsb.tmgrup.com.tr/2019/04/28/ancient-akdamar-church-on-lake-van-worth-a-trip-to-eastern-anatolia-1556478157686.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    margin: EdgeInsets.all(5.0),
                    alignment: Alignment.bottomCenter,
                    child: Transform(
                      alignment: Alignment.bottomCenter,
                      transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                      child: Container(
                        height: 45,
                        width: double.infinity,
                        color: Color(0xCDFFFFFF),
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.bottomCenter,
                        child: const Text(
                          "TextField Sayfası \n  AlertView Sayfasına Git ",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                )),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/imageview"),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://iadsb.tmgrup.com.tr/39fd82/1200/627/0/0/1326/693?u=https://idsb.tmgrup.com.tr/2019/04/28/ancient-akdamar-church-on-lake-van-worth-a-trip-to-eastern-anatolia-1556478157686.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                margin: EdgeInsets.all(5.0),
                alignment: Alignment.bottomCenter,
                child: Transform(
                  alignment: Alignment.bottomCenter,
                  transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    color: Color(0xCDFFFFFF),
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.bottomCenter,
                    child: const Text(
                      "Tek Tıklama\n  ImageView Sayfasına Git ",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
                onTap: () => Navigator.pushNamed(context, "/ilksayfa"),
                child: Card(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://img.freepik.com/free-vector/colorful-palm-silhouettes-background_23-2148541792.jpg?w=2000"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    margin: EdgeInsets.all(5.0),
                    alignment: Alignment.bottomCenter,
                    child: Transform(
                      alignment: Alignment.bottomCenter,
                      transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                      child: Container(
                        height: 45,
                        width: double.infinity,
                        color: Color(0xCDFFFFFF),
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.bottomCenter,
                        child: const Text(
                          "Tek Tıklama\n  İlk Sayfaya Git ",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                )),
            GestureDetector(
                onDoubleTap: () => Navigator.pushNamed(context, "/hello"),
                child: Card(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/mountain.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    margin: EdgeInsets.all(5.0),
                    alignment: Alignment.bottomCenter,
                    child: Transform(
                      alignment: Alignment.bottomCenter,
                      transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                      child: Container(
                        height: 45,
                        width: double.infinity,
                        color: Color(0xCDFFFFFF),
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.bottomCenter,
                        child: const Text(
                          "Çift Tıklama\n  Hello Sayfasına Git ",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                )),
            GestureDetector(
                onLongPress: () =>
                    Navigator.pushNamed(context, "/degisenWidget"),
                child: Card(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/lake.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    margin: EdgeInsets.all(5.0),
                    alignment: Alignment.bottomCenter,
                    child: Transform(
                      alignment: Alignment.bottomCenter,
                      transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                      child: Container(
                        height: 45,
                        width: double.infinity,
                        color: Color(0xCDFFFFFF),
                        padding: const EdgeInsets.all(8.0),
                        alignment: Alignment.bottomCenter,
                        child: const Text(
                          "Uzun Tıklama\n  Değişebilen Widget Sayfasına Git ",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                )),
            Container(
              color: Colors.blue.shade100,
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: const Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.blue.shade100,
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: const Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.blue.shade100,
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: const Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.blue.shade100,
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: const Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.blue.shade100,
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: const Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.blue.shade100,
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: const Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.blue.shade100,
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: const Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.blue.shade100,
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: const Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.blue.shade100,
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: const Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.blue.shade100,
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: const Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.blue.shade100,
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: const Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.blue.shade100,
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: const Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.blue.shade100,
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: const Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.blue.shade100,
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: const Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.blue.shade100,
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: const Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.blue.shade100,
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: const Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.blue.shade100,
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: const Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.blue.shade100,
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: const Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.blue.shade100,
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: const Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.blue.shade100,
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: const Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.blue.shade100,
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: const Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.blue.shade100,
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: const Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.blue.shade100,
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: const Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.blue.shade100,
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: const Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.blue.shade100,
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: const Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.blue.shade100,
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: const Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.blue.shade100,
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: const Text(
                "Grid Elemanı",
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      //   child: Text(
      //     "Merhaba Scaffold",
      //     textDirection: TextDirection.ltr,
      //   ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.camera),
            label: "Kamera",
          ),
          NavigationDestination(
            icon: Icon(Icons.bubble_chart),
            label: "Sohbetler",
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outlined),
            label: "Gruplar",
          ),
          NavigationDestination(
            icon: Icon(Icons.circle_notifications),
            label: "  Durum",
          ),
          NavigationDestination(
            icon: Icon(Icons.call),
            label: "Aramalar",
          ),
        ],
        onDestinationSelected: (int i) {
          switch (i) {
            case 0:
              debugPrint("Tıkladığınız buton = Kamera");
              break;

            case 1:
              debugPrint("Tıkladığınız buton = Sohbetler");
              break;

            case 2:
              debugPrint("Tıkladığınız buton = Gruplar");
              break;

            case 3:
              debugPrint("Tıkladığınız buton = Durum");
              break;

            case 4:
              debugPrint("Tıkladığınız buton = Aramalar");
              break;

            default:
              debugPrint("Tıkladığınız buton bulunamadı");
              break;
          }
        },
      ),
      drawer: Drawer(
        child: ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Anasayfaya Dön'),
          onTap: () {
            // change app state...
            Navigator.pop(context); // close the drawer
            debugPrint("Yan Menüye Tıkladınız");
          },
        ),
      ),
    );
  }
}
