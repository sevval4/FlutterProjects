import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: DrumPage(),
      ),
    );
  }
}

class DrumPage extends StatelessWidget {
  DrumPage({super.key});

  final player = AudioPlayer();

  void PlayO(String dosya) async {
    String assetPath = 'sounds/$dosya.wav';

    // AssetSource kullanarak player'a setSource çağrısı yapın
    await player.setSource(AssetSource(assetPath));

    // Oynatmayı başlatmak için play metodunu çağırın
    await player.play(AssetSource(assetPath));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buidDrumPad("crash", Colors.indigo),
                  ),
                  Expanded(child: buidDrumPad("clap2", Colors.cyan)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: buidDrumPad("clap3", Colors.purple)),
                  Expanded(child: buidDrumPad("clap1", Colors.blue))
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buidDrumPad("how", Colors.green),
                  ),
                  Expanded(child: buidDrumPad("woo", Colors.yellow)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: buidDrumPad("oobah", Colors.pink)),
                  Expanded(
                    child: buidDrumPad(
                      "ridebel",
                      Color.fromARGB(255, 245, 94, 0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextButton buidDrumPad(muzik, Color renk) {
    return TextButton(
      style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
      onPressed: () {
        PlayO(muzik);
      },
      child: Container(
        color: renk,
      ),
    );
  }
}
