
import 'package:flutter/material.dart';

class ProviderScreen extends ChangeNotifier{

  int count=0;

  void Increment(){
    count++;
    notifyListeners();
  }
  void Decrement(){
    count--;
    notifyListeners();
  }
  }