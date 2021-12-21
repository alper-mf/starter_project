import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class KresLogo extends StatelessWidget {
  const KresLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //alignment: Alignment.center,
      height: Get.height,
      width: Get.width,
      //child: Image.asset("assets/backgrounds/kres-logo.png"),
      child: Image.asset("assets/icon/icon.png"),
    );
  }
}
