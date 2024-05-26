import 'package:flutter/material.dart';
import 'package:flutter_kahveci/constants/constants.dart';
import 'package:flutter_kahveci/life/gender_widget.dart';
import 'package:flutter_kahveci/life/my_container.dart';
import 'package:flutter_kahveci/life/result_page.dart';
import 'package:flutter_kahveci/life/user_data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String? seciliGender;
  double sporGunu = 2;
  double icilenSigara = 10;
  int boy = 170;
  int kilo = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Life Expectancy",
            style: TextStyle(color: Colors.black45),
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    child: buildRow("BOY"),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    child: buildRow("KİLO"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Günde kaç sigara içiyorsun?", style: kMetinStili),
                    Text(icilenSigara.round().toString(), style: kSayiStili),
                    Slider(
                        value: icilenSigara,
                        max: 30,
                        min: 0,
                        label: icilenSigara.round().toString(),
                        onChanged: ((double value) {
                          setState(() {
                            icilenSigara = value;
                          });
                        })),
                  ]),
            ),
          ),
          Expanded(
              child: MyContainer(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Haftada kaç gün spor yapıyorsunuz?",
                style: kMetinStili,
              ),
              Text(sporGunu.round().toString(), style: kSayiStili),
              Slider(
                value: sporGunu,
                max: 7,
                divisions: 7,
                label: sporGunu.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    sporGunu = value;
                  });
                },
              )
            ]),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {},
                  child: MyContainer(
                    onPress: () {
                      setState(() {
                        seciliGender = "KADIN";
                      });
                    },
                    renk: seciliGender == "KADIN"
                        ? const Color.fromARGB(255, 39, 46, 176)
                        : Colors.white,
                    child: GenderWidget(
                        genderIcon: FontAwesomeIcons.venus,
                        genderText: "KADIN"),
                  ),
                )),
                Expanded(
                    child: MyContainer(
                  onPress: () {
                    setState(() {
                      seciliGender = "ERKEK";
                    });
                  },
                  renk: seciliGender == "ERKEK" ? Colors.purple : Colors.white,
                  child: GenderWidget(
                      genderIcon: FontAwesomeIcons.mars, genderText: "ERKEK"),
                )),
              ],
            ),
          ),
          ButtonTheme(
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(UserData(
                            kilo: kilo,
                            boy: boy,
                            seciliGender: seciliGender,
                            icilenSigara: icilenSigara,
                            sporGunu: sporGunu))));
              },
              child: Text(
                "HESAPLA",
                style: kMetinStili,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row buildRow(String label) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RotatedBox(quarterTurns: -1, child: Text(label, style: kMetinStili)),
        SizedBox(
          width: 15,
        ),
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            label == "BOY" ? boy.toString() : kilo.toString(),
            style: kSayiStili,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonTheme(
              minWidth: 36,
              child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    label == "BOY" ? boy++ : kilo++;
                  });
                },
                child: Icon(
                  FontAwesomeIcons.plus,
                  size: 15,
                ),
              ),
            ),
            ButtonTheme(
              minWidth: 36,
              child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    label == "BOY" ? boy-- : kilo--;
                  });
                },
                child: Icon(
                  FontAwesomeIcons.minus,
                  size: 15,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
