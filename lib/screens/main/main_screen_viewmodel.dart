import 'package:flutter/cupertino.dart';

class MainScreenViewModel extends ChangeNotifier {
  int _currentScreenIndex = 0;

  int get currentScreenIndex => _currentScreenIndex;

  void setScreenToShow(int index) {
    _currentScreenIndex = index;
    notifyListeners();
  }

  void initialise() {
    notifyListeners();
  }
}
