import 'package:flutter/material.dart';

class BenimUyg extends StatelessWidget {
  const BenimUyg({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lime,
        body: SafeArea(
            child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.stretch, //yatayda ekranı doldur.
          //mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: Colors.white,
              width: 200, //üstün kısıtlaması önceliklidir onun sözü geçer
              height: 100,
              child: const Text("1.container"),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              color: Colors.pink,
              width: 200,
              height: 100,
              //margin: EdgeInsets.symmetric(vertical: 20),
              child: const Text("2.container"),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              color: Color.fromARGB(255, 30, 233, 203),
              width: 200,
              height: 100,
              child: const Text("3.container"),
            ),
          ],
        )),
      ),
    );
  }
}
