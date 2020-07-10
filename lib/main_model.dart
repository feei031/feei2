import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
  String asaiText = '浅井';

  void changeAsaiText(){
    asaiText = '山田すみれ';
    notifyListeners();
  }
}