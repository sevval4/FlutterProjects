import 'package:flutter/material.dart';
import 'package:flutter_kahveci/constants/constants.dart';
import 'package:flutter_kahveci/life/hesap.dart';
import 'package:flutter_kahveci/life/user_data.dart';

class ResultPage extends StatelessWidget {
  final UserData userData;
  ResultPage(this.userData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sonuç Sayfası")),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
            flex: 8,
            child: Center(
                child: Text(
              Hesap(userData).hesaplama().toString(),
              style: kMetinStili,
            ))),
        Expanded(
            flex: 1,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "GERİ DÖN",
                  style: kMetinStili,
                )))
      ]),
    );
  }
}
