import 'package:flutter/cupertino.dart';

class Data extends ChangeNotifier {

   String _value = '';

  String get value => _value;

  void changeValue(String newValue){
    _value = newValue;
    notifyListeners();
  }


}