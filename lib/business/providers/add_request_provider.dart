import 'package:flutter/material.dart';

class AddRequestProvider extends ChangeNotifier {
  DateTime date = DateTime.now();
  String gunType = "Gun Type 1";
  String requestFrom = "JARAKED (Jafurah)";
  String serviceCompany = "Service Company 1";
  String wbs = "WBS Value 1";

  DateTime get selectedDate => date;

  String get selectedGunType => gunType;

  String get selectedRequestFrom => requestFrom;

  String get selectedServiceCompany => serviceCompany;

  String get selectedWBS => wbs;

  void setDate(DateTime newDate) {
    date = newDate;
    notifyListeners();
  }

  void setGunType(String newValue) {
    gunType = newValue;
    notifyListeners();
  }

  void setRequestFrom(String newValue) {
    requestFrom = newValue;
    notifyListeners();
  }

  void setServiceCompany(String newValue) {
    serviceCompany = newValue;
    notifyListeners();
  }

  void setWBS(String newValue) {
    wbs = newValue;
    notifyListeners();
  }
}
