import 'package:flutter/material.dart';

class Ext {
  static showLoading(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProgressIndicator(),
                SizedBox(
                  width: 24.0,
                ),
                Text("Loading..."),
              ],
            ),
          ),
        );
      },
    );
  }

  static dismissLoading(BuildContext context) => Navigator.pop(context);

  static matchParentHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static matchParentWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
}
