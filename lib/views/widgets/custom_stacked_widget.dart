import 'package:flutter/material.dart';
import 'package:food_court_ui_test/utils/colors.dart';
import 'package:food_court_ui_test/utils/custom_screen_util.dart';
import 'package:food_court_ui_test/views/widgets/custom_close_button_widget.dart';
import 'package:food_court_ui_test/views/widgets/gift_box_widget.dart';
import 'package:food_court_ui_test/views/widgets/referral_text_widget.dart';
import 'package:food_court_ui_test/views/widgets/refferal_code_widget.dart';

class CustomStackedWidget extends StatelessWidget {
  const CustomStackedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getHeight(393),
      color: kCustomStackWidgetBackgroundColor,
      child: Stack(
        children: [
          const GiftBoxWidget(),
          CustomCloseButton(onTapped: (){},),
          const ReferralTextWidget(),
          const ReferalCodeWidget(),
        ],
      ),
    );
  }
}







