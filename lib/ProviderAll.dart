import 'package:flutter/material.dart';

class ProviderConstants with ChangeNotifier {
  int IndexTap = 0;

  void ChangeIndexTap({@required var Value}) {
    IndexTap = Value;
    notifyListeners();
  }
}
