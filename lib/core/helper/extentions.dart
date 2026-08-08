
import 'package:flutter/material.dart';
extension Navigations on BuildContext {
  Future? pushNamed(String routeName) {
    return Navigator.pushNamed(this, routeName);
  }
}