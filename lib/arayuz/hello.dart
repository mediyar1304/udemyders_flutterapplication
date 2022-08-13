import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Sayfası"),
      ),
      body: Container(
        color: Colors.green,
        alignment: Alignment.center,
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(20.0),
          padding: const EdgeInsets.all(15.5),
          color: Colors.cyan,
          child: Container(
              alignment: Alignment.center,
              color: Colors.brown,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                textDirection: TextDirection.ltr,
                verticalDirection: VerticalDirection.down,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    textDirection: TextDirection.ltr,
                    verticalDirection: VerticalDirection.down,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        color: Colors.deepOrange.shade400,
                        margin: const EdgeInsets.all(5.0),
                        child: const Text(
                          "Merhaba ",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
