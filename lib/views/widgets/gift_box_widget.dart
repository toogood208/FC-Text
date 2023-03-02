import 'package:flutter/material.dart';
import 'package:food_court_ui_test/utils/custom_screen_util.dart';

class GiftBoxWidget extends StatelessWidget {
  const GiftBoxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: Image.asset(
        "assets/images/gift_box.png",
        height: getHeight(291),
      ),
    );
  }
}