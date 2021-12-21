import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomFullScreenDialog {
  static void showDialog() {
    Get.dialog(
        WillPopScope(
            child: const Center(
              child: CupertinoActivityIndicator(),
            ),
            onWillPop: () => Future.value(false)),
        barrierDismissible: false,
        useSafeArea: true,
        barrierColor: Colors.black.withOpacity(0.3));
  }

  static void cancelDialog() {
    Get.back();
  }

  static void showFormDialog() {
    Get.dialog(
        WillPopScope(
            child: Container(
              height: Get.height / 2,
              width: Get.width,
              color: Colors.white,
              child: Column(
                children: const [
                  Text('TEST'),
                ],
              ),
            ),
            onWillPop: () => Future.value(false)),
        barrierDismissible: false,
        useSafeArea: true,
        barrierColor: Colors.black.withOpacity(0.3));
  }
}
