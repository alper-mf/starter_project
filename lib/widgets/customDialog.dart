import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wp_app/ui/styles/text_styles/text_style.dart';

// ignore: must_be_immutable
class GetPackagesBox extends StatefulWidget {
  String? text;
  String? menu;
  GetPackagesBox({Key? key, required this.text, required this.menu})
      : super(key: key);

  //GetPackagesBox({this.userID});
  @override
  _GetPackagesBoxState createState() => _GetPackagesBoxState();
}

class _GetPackagesBoxState extends State<GetPackagesBox> {
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setState) {
      return Dialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Stack(
          // ignore: deprecated_member_use
          overflow: Overflow.visible,
          alignment: Alignment.topCenter,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${widget.menu}',
                    style: UITextStyle().h1,
                  ),
                  SizedBox(
                    height: Get.height * .020,
                  ),
                  Text(widget.text.toString()),
                ],
              ),
            ),
            /*
            Positioned(
              top: -60,
              child: CircleAvatar(
                backgroundColor: Colors.purple,
                radius: 60,
                child: Icon(Icons.whatshot_outlined,
                    size: 60, color: Colors.white),
              ),
            ),
            */
          ],
        ),
      );
    });
  }
}
