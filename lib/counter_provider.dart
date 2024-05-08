import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0;

  int get count => _counter;

  incrementCounter() {
    _counter++;
    notifyListeners();
  }
}
