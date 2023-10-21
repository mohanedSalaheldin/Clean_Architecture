import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:weather_app_1810/src/core/utils/app_strings.dart';

class Constants {
  static void showErrorDialog({
    required context,
    required String msg,
  }) {
    showDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text(
          msg,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              AppStrings.ok,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static void showToast({
    Color? color,
    ToastGravity? gravity,
    required String msg,
  }) {
    Fluttertoast.showToast(
      msg: msg,
      backgroundColor: color ?? Colors.black,
      gravity: gravity ?? ToastGravity.BOTTOM,
    );
  }
}
