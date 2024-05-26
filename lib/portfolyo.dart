import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

int yanitIndex = 0;

class _MyHomePageState extends State<MyHomePage> {
  List<String> yanitlar = [
    'TIKLA FALIN GELSİN',
    'ŞEVVAL ÇELİK',
    'Yaş:23',
    'Burç:Oğlak',
    'Bandırma On Yedi Eylül Üniversitesi',
    'Yazılım MÜhendisliği- 4.sınıf'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 203, 51, 223),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 186, 30, 233),
          title: Text(
            "PORTFOLYO",
            style: GoogleFonts.satisfy(
              textStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 30),
                width: 150,
                child: Image.asset("assets/images/sevo.jpg"),
              ),
              Text(
                'Şevval Çelik',
                style: GoogleFonts.satisfy(
                  textStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
                child: ListTile(
                  leading: Icon(
                    Icons.heart_broken,
                    color: Color.fromARGB(255, 150, 62, 161),
                  ),
                  title: Text(
                    "KİŞİSEL BİLGİLERİM",
                    style: GoogleFonts.satisfy(
                      textStyle:
                          TextStyle(color: Color.fromARGB(182, 156, 41, 114)),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      yanitIndex = Random().nextInt(3) + 1;
                    });
                  },
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
                child: ListTile(
                  leading: Icon(
                    Icons.money,
                    color: Colors.green,
                  ),
                  title: Text(
                    "EĞİTİM BİLGİLERİM",
                    style: TextStyle(color: Colors.green),
                  ),
                  onTap: () {
                    setState(() {
                      yanitIndex = Random().nextInt(3) + 3;
                    });
                  },
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
                child: ListTile(
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.blue,
                  ),
                  title: Text(
                    "GÜNLÜK FAL",
                    style: TextStyle(color: Colors.blue),
                  ),
                  onTap: () {
                    setState(() {
                      yanitIndex = Random().nextInt(3) + 3;
                    });
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 200,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 20.0),
                  child: Text(
                    yanitlar[yanitIndex],
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
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
