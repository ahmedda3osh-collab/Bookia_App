
import 'package:flutter/material.dart';
extension Navigations on BuildContext {
  Future? pushNamed(String routeName) {
    return Navigator.pushNamed(this, routeName);
  }
  Future<Object?> pushNamedAndRemoveUntil(String routeName, bool predicate) {
    return Navigator.pushNamedAndRemoveUntil(this, routeName, (route) => predicate);
  }
  void pop(){
        return Navigator.pop(this);

  }
}