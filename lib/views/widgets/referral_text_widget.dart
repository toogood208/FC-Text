import 'package:flutter/material.dart';
import 'package:food_court_ui_test/utils/custom_screen_util.dart';

class ReferralTextWidget extends StatelessWidget {
  const ReferralTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: getHeight(157),
      left: getWidth(23),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Get ₦500 with each referral!",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: getFont(18),
                color: const Color.fromRGBO(26, 26, 26, 1)),
          ),
          SizedBox(height: getHeight(5)),
          SizedBox(
            width: getWidth(222),
            height: getHeight(66),
            child: Text(
              "Give your friends ₦500 OFF their first order & get ₦500 whenever your code is used as a discount.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: getFont(14),
                color: const Color.fromRGBO(89, 89, 89, 1),
                height: getLineHiegt(size: 14, lineHeight: 22),
              ),
            ),
          ),
        ],
      ),
    );
  }
}