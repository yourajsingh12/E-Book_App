import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

void showSuccessToast(String text) {
  Fluttertoast.showToast(
    msg:  text,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.green[600],
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

void showErrorToast(String text) {
  Fluttertoast.showToast(
    msg: text,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.red[600],
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

void showInfoToast(String text) {
  Fluttertoast.showToast(
    msg: "ℹ️ $text",
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.blue[600],
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
