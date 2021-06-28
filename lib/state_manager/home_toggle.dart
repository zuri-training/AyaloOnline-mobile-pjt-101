import 'package:flutter/cupertino.dart';

class HomePageIndex with ChangeNotifier {
  HomePageIndex();

  int _index = 0;
  void setIndex(int inputIndex) {
    _index = inputIndex;
    notifyListeners();
  }

  int get index => _index;
}

class IsLeasor with ChangeNotifier {
  IsLeasor();
  bool _isLeasor = false;

  void changeAccount() {
    HomePageIndex().setIndex(0);
    _isLeasor = !_isLeasor;
    notifyListeners();
  }

  void isLeasor(bool isLeasor) {
    _isLeasor = isLeasor;
  }

  bool get isLeassor => _isLeasor;
}
