import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
  String asaiText = '気になる本';

  void changeAsaiText(){
    asaiText = '山田すみれ';
    notifyListeners();
  }
}