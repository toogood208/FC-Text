import 'package:flutter/material.dart';
import 'package:food_court_ui_test/utils/colors.dart';
import 'package:food_court_ui_test/utils/custom_screen_util.dart';

class CustomCloseButton extends StatelessWidget {
  const CustomCloseButton({
    super.key,
    required this.onTapped
  });
  final VoidCallback onTapped;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: getHeight(58),
      left: getWidth(18),
      child: GestureDetector(
        onTap: onTapped,
        child: Container(
          height: getHeight(40),
          width: getWidth(40),
          decoration:
              const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: Center(
            child: Icon(
              Icons.close,
              color: kCloseButtonColor,
            ),
          ),
        ),
      ),
    );
  }
}
