import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
  String asaiText = '浅井';

  void changeAsaiText(){
    asaiText = 'かわったぜ';
    notifyListeners();
  }
}