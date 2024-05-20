import 'package:flutter/material.dart';

class AllRequestsProvider extends ChangeNotifier {
  DateTime date = DateTime.now();

  DateTime get selectedDate => date;

  void setDate(DateTime newDate) {
    date = newDate;
    notifyListeners();
  }
}
