import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _nombre = [];
  List<String> get nombre => _nombre;
  set nombre(List<String> value) {
    _nombre = value;
  }

  void addToNombre(String value) {
    _nombre.add(value);
  }

  void removeFromNombre(String value) {
    _nombre.remove(value);
  }

  void removeAtIndexFromNombre(int index) {
    _nombre.removeAt(index);
  }

  void updateNombreAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _nombre[index] = updateFn(_nombre[index]);
  }

  void insertAtIndexInNombre(int index, String value) {
    _nombre.insert(index, value);
  }

  List<String> _lastnames = [];
  List<String> get lastnames => _lastnames;
  set lastnames(List<String> value) {
    _lastnames = value;
  }

  void addToLastnames(String value) {
    _lastnames.add(value);
  }

  void removeFromLastnames(String value) {
    _lastnames.remove(value);
  }

  void removeAtIndexFromLastnames(int index) {
    _lastnames.removeAt(index);
  }

  void updateLastnamesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _lastnames[index] = updateFn(_lastnames[index]);
  }

  void insertAtIndexInLastnames(int index, String value) {
    _lastnames.insert(index, value);
  }

  List<DateTime> _date = [];
  List<DateTime> get date => _date;
  set date(List<DateTime> value) {
    _date = value;
  }

  void addToDate(DateTime value) {
    _date.add(value);
  }

  void removeFromDate(DateTime value) {
    _date.remove(value);
  }

  void removeAtIndexFromDate(int index) {
    _date.removeAt(index);
  }

  void updateDateAtIndex(
    int index,
    DateTime Function(DateTime) updateFn,
  ) {
    _date[index] = updateFn(_date[index]);
  }

  void insertAtIndexInDate(int index, DateTime value) {
    _date.insert(index, value);
  }
}
