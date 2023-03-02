import 'package:flutter/material.dart';
import 'package:food_court_ui_test/utils/text_styles.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    super.key,
    required this.title,
    required this.onTapped
  });

  final VoidCallback onTapped;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Text(title, style: kActionButtonTextStyle),
    );
  }
}
