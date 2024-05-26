import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const BenimUyg());
}

class BenimUyg extends StatelessWidget {
  const BenimUyg({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "BUGÜN NE YESEM?",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: const YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  const YemekSayfasi({super.key});

  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;

  int yemekNo = 1;

  int tatliNo = 1;
  List<String> corbaAdlari = [
    "mercimek ",
    "Tarhana",
    "Tavuksuyu",
    "Düğün Çorbası",
    "Yoğurtlu Çorba"
  ];

  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];

  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];

  void yemekleriYenile() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  foregroundColor: Colors.white,
                ),
                onPressed: yemekleriYenile,
                child: Image.asset("assets/images/corba_$corbaNo.jpg"),
              ),
            ),
          ),
          Text(
            corbaAdlari[corbaNo - 1],
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Divider(
            height: 5,
            color: Colors.black,
            thickness: 1,
            indent: 100,
            endIndent: 100,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: Colors.white,
                  ),
                  onPressed: yemekleriYenile,
                  child: Image.asset("assets/images/yemek_$yemekNo.jpg")),
            ),
          ),
          Text(
            yemekAdlari[yemekNo - 1],
            style: TextStyle(fontSize: 16),
          ),
          Divider(
            height: 5,
            color: Colors.black,
            thickness: 1,
            indent: 100,
            endIndent: 100,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      foregroundColor: Colors.white),
                  onPressed: yemekleriYenile,
                  child: Image.asset("assets/images/tatli_$tatliNo.jpg")),
            ),
          ),
          Text(
            tatliAdlari[tatliNo - 1],
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
