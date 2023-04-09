import 'package:flutter/material.dart';

class Select with ChangeNotifier {
  int _selectedGame = 0;

  int get selectedGame => _selectedGame;

  set selectedGame(int index) {
    _selectedGame = index;
    notifyListeners();
  }
}
