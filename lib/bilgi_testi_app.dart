import 'package:flutter/material.dart';
import 'package:flutter_kahveci/constants.dart';
import 'package:flutter_kahveci/test_veri.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.indigo[700],
            body: SafeArea(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 20.0),
              child: SoruSayfasi(),
            ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List<Widget> secimler = [];

  TestVeri test_1 = TestVeri();
  void butonFoksiyonu(bool hangiButon) {
    if (test_1.testBittiMi() == true) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: new Text("Congratulations"),
              actions: [
                ElevatedButton(
                  child: new Text("Back To Top"),
                  onPressed: () {
                    Navigator.of(context).pop(); //dialog kutusu ekrandan kalkar

                    setState(() {
                      test_1.testiSifirla();
                      secimler = [];
                    });
                  },
                )
              ],
            );
          });
    } else {
      setState(() {
        test_1.getSoruYaniti() == hangiButon
            ? secimler.add(kDogruIconu)
            : secimler.add(kYanlisIcon);

        test_1.sonrakiSoru();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                test_1.getSoruMetni().toString(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          alignment: WrapAlignment.start,
          spacing: 3,
          runSpacing: 3,
          children: secimler,
        ),
        const SizedBox(height: 140.0),
        Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(35.0, 0.0, 0.0, 0.0),
            child: Row(
              children: [
                Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // test_1.soruBankasi[kacinciSoru].soruYaniti=false;
                      butonFoksiyonu(false);
                    },
                    icon: const Icon(Icons.thumb_up),
                    label: const SizedBox(width: 60),
                  ),
                ),
                const SizedBox(width: 50.0),
                ElevatedButton.icon(
                  onPressed: () {
                    butonFoksiyonu(true);
                  },
                  icon: const Icon(Icons.thumb_up),
                  label: const SizedBox(width: 60),
                ),
                const SizedBox(width: 50.0),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
