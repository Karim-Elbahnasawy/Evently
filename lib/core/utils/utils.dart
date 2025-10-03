import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  static void showLoading(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => PopScope(
        canPop: false,
        child: CupertinoAlertDialog(
          content: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProgressIndicator(),
              ],
            ),
          ),
        ),
      ),
    );
  }
  static void hideDialog(BuildContext context){
    Navigator.pop(context);
    
  }

  static void showToastMessage(String message,Color bgColor){
     Fluttertoast.showToast(
        msg: message,
        backgroundColor: bgColor,
        fontSize: 20,
        textColor: Colors.white,
        gravity: ToastGravity.BOTTOM,
        toastLength: Toast.LENGTH_SHORT,
      );
  }
}
