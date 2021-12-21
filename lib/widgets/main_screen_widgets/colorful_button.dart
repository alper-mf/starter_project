import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ColourFullButton extends StatelessWidget {
  Color? mainColor;
  String? titleText;
  String? subTitleText;

  ColourFullButton(
      {Key? key, required this.mainColor, this.titleText, this.subTitleText})
      : super(key: key);

  final TextStyle _title = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16);

  final TextStyle _subTitle =
      const TextStyle(color: Colors.white, fontSize: 12);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * .20,
      width: Get.width,
      decoration: BoxDecoration(
          color: mainColor,
          borderRadius: const BorderRadius.all(Radius.circular(24))),
      child: Stack(
        children: [
          SizedBox(
            height: Get.height,
            width: Get.width / 4.4,
            //color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(titleText!, style: _title),
                  Text(subTitleText!, style: _subTitle),
                ],
              ),
            ),
          ),
          const Align(
              alignment: Alignment.bottomRight,
              child: FlutterLogo(
                size: 72,
              ))
        ],
      ),
    );
  }
}
