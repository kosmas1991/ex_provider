import 'package:flutter/foundation.dart';

class MyButton with ChangeNotifier {
  bool state = true;

  bool get getState => state;

  set setState(bool daState) {
    state = daState;
    notifyListeners();
  }
}
