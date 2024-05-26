import 'package:flutter_kahveci/soru.dart';

class TestVeri {
  int _kacinciSoru = 0;
  List<Soru> _soruBankasi = [
    Soru(
        soruMetni: "Titanic gelmiş geçmiş en büyük gemidir", soruYaniti: false),
    Soru(
        soruMetni: "Dünyadaki tavuk sayısı insan sayısından fazladır",
        soruYaniti: true),
    Soru(soruMetni: "Kelebeklerin ömrü bir gündür", soruYaniti: false),
    Soru(
        soruMetni: "Titanic gelmiş geçmiş en büyük gemidir", soruYaniti: false),
  ];
  String getSoruMetni() {
    return _soruBankasi[_kacinciSoru].soruMetni.toString();
  }

  bool getSoruYaniti() {
    return _soruBankasi[_kacinciSoru].soruYaniti!;
  }

  void sonrakiSoru() {
    if (_kacinciSoru + 1 < _soruBankasi.length) {
      _kacinciSoru++;
    }
  }

  bool testBittiMi() {
    if (_kacinciSoru + 1 >= _soruBankasi.length) {
      return true;
    } else {
      return false;
    }
  }

  void testiSifirla() {
    _kacinciSoru = 0;
  }
}
