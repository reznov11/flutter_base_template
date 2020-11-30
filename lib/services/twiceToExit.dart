import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

DateTime currentBackPressTime;

Future<bool> onWillPop() {
  DateTime now = DateTime.now();
  if (currentBackPressTime == null ||
      now.difference(currentBackPressTime) > Duration(seconds: 2)) {
    currentBackPressTime = now;
    Fluttertoast.showToast(
      msg: 'Для подтверждения выхода, нажмите назад ещё раз',
      textColor: Colors.black,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 3,
    );
    return Future.value(false);
  }
  // Fluttertoast.cancel();
  return Future.value(true);
}
