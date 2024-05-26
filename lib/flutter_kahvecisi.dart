import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BenimUyg());
}

class BenimUyg extends StatelessWidget {
  const BenimUyg({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //tüm fontlar değişti  theme: ThemeData(fontFamily: 'Satisfy'),
        home: Scaffold(
      backgroundColor: Color.fromARGB(255, 157, 115, 100),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage("assets/images/kahve.jpg"),
                radius: 70,
              ),
              Text(
                "Flutter Kahvecisi",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.brown[900],
                    fontFamily: 'Satisfy'),
              ),
              Text(
                "BİR FİNCAN UZAĞINDA",
                style: GoogleFonts.pacifico(fontSize: 16, color: Colors.white),
              ),
              Divider(height: 30, color: Colors.brown[900]),
              Card(
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  color: Colors.brown[900],
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    title: Text(
                      "sevvalcelik@gmail.com",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  )),
              const SizedBox(
                height: 30,
              ),
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 50),
                color: Colors.brown[900],
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  title: Text(
                    "+90 555 55 55",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
