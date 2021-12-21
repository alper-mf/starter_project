import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GlassCard extends StatelessWidget {
  late Widget gelenWidget;

  GlassCard({Key? key, required this.gelenWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          boxShadow: [
            BoxShadow(
                blurRadius: 3,
                spreadRadius: 1,
                color: Colors.black.withOpacity(0.2))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(60),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 16.8,
            sigmaY: 16.8,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.1),
              borderRadius: BorderRadius.circular(60),
            ),
            child: gelenWidget,
          ),
        ),
      ),
    );
  }
}
