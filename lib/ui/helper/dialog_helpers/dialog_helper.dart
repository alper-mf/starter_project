import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DialogHelper {
  //Dialog
  void dialogGoster(String title, String text, BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(
              title: Text(title),
              content: Text(text),
              actions: [
                CupertinoDialogAction(
                  child: const Text('Ok'),
                  onPressed: () => Get.back(),
                ),
              ],
            ));
  }

  //SnackBar
  snackbar(String title, String message) {
    Get.snackbar(title, message,
        barBlur: 99, snackPosition: SnackPosition.BOTTOM);
  }
}
