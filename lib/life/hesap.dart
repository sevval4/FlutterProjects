import 'package:flutter_kahveci/life/user_data.dart';

class Hesap {
  UserData _userData;
  Hesap(this._userData);

  double? hesaplama() {
    double? sonuc;
    sonuc = 90 + _userData.sporGunu! - _userData.icilenSigara!;
    sonuc = sonuc + (_userData.boy! / _userData.kilo!);
    return _userData.seciliGender == "KADIN" ? sonuc + 3 : sonuc;
  }
}
