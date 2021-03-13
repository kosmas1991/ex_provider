import 'package:flutter/foundation.dart';

class AppBarButton with ChangeNotifier{
  String name = 'Midas';
  bool state = false;

  String get getName => name;
  set setName(String str){
    name = str;
    notifyListeners();
  }
  bool get getState => state;
  set setState(bool value){
    state = value;
    notifyListeners();
  }
}