import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String asaiText = '新規登録';

  void changeAsaiText() {
    asaiText = '山田すみれ';
    notifyListeners();
  }
}
