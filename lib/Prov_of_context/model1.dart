import 'package:flutter/material.dart';

class Model1 extends ChangeNotifier{
  String name = "ali";
  num count = 0;
  get n => name;
  get c => count;
  change(){
    name = "khalil";
   
    notifyListeners();
  }
   change1(){
    
    count++;
    notifyListeners();
  }
}