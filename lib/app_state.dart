import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _Likes = prefs.getInt('ff_Likes') ?? _Likes;
    _Dislikes = prefs.getInt('ff_Dislikes') ?? _Dislikes;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DocumentReference> _cart = [];
  List<DocumentReference> get cart => _cart;
  set cart(List<DocumentReference> _value) {
    _cart = _value;
  }

  void addToCart(DocumentReference _value) {
    _cart.add(_value);
  }

  void removeFromCart(DocumentReference _value) {
    _cart.remove(_value);
  }

  void removeAtIndexFromCart(int _index) {
    _cart.removeAt(_index);
  }

  bool _showFullList = true;
  bool get showFullList => _showFullList;
  set showFullList(bool _value) {
    _showFullList = _value;
  }

  int _Likes = 0;
  int get Likes => _Likes;
  set Likes(int _value) {
    _Likes = _value;
    prefs.setInt('ff_Likes', _value);
  }

  int _Dislikes = 0;
  int get Dislikes => _Dislikes;
  set Dislikes(int _value) {
    _Dislikes = _value;
    prefs.setInt('ff_Dislikes', _value);
  }

  int _PriceRange = 0;
  int get PriceRange => _PriceRange;
  set PriceRange(int _value) {
    _PriceRange = _value;
  }

  bool _Darkmode = false;
  bool get Darkmode => _Darkmode;
  set Darkmode(bool _value) {
    _Darkmode = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
