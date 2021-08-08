import 'package:flutter/foundation.dart';

class TodoProvider extends ChangeNotifier{
String testName = 'ola';
 changeName(String newName){
  this.testName =newName;
  notifyListeners();
}

}   