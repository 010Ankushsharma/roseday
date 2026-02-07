import 'package:flutter/material.dart';

class RoseDayController extends ChangeNotifier {
  bool showLetter = false;
  bool showButton = false;
  bool showSurprise = false;

  void startLetter() {
    showLetter = true;
    notifyListeners();
  }

  void showSurpriseButton() {
    showButton = true;
    notifyListeners();
  }

  void triggerSurprise() {
    showSurprise = true;
    notifyListeners();
  }
}
