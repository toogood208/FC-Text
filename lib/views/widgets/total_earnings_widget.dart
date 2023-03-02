import 'package:flutter/material.dart';
import 'package:food_court_ui_test/utils/custom_screen_util.dart';
import 'package:food_court_ui_test/utils/text_styles.dart';
import 'package:food_court_ui_test/views/widgets/custom_action_button.dart';

class TotalEarningsWidget extends StatelessWidget {
  const TotalEarningsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: getWidth(18), vertical: getHeight(14)),
      width: getWidth(344),
      height: getHeight(133),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: const Color.fromRGBO(247, 247, 247, 1)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Earnings",
                style:kTotalEarningTitleTextStyle
              ),
              Text(
                "₦2500",
                style: kTotalEarningAmountTexStyle
              )
            ],
          ),
          SizedBox(
            height: getHeight(17),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "3 People used your code this week!",
                style: TextStyle(
                  fontSize: getFont(12),
                  height: getLineHiegt(size: 12, lineHeight: 14.06),
                  color: const Color.fromRGBO(4, 193, 0, 1),
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.trending_up,
                    size: 13,
                    color: Color.fromRGBO(4, 193, 0, 1),
                  ),
                  SizedBox(
                    width: getWidth(4),
                  ),
                  Text(
                    "₦1600",
                    style: TextStyle(
                      fontSize: getFont(12),
                      height: getLineHiegt(size: 12, lineHeight: 14.06),
                      color: const Color.fromRGBO(4, 193, 0, 1),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: getHeight(29),
          ),
          CustomActionButton(title: "See full history", onTapped: () {}),
        ],
      ),
    );
  }
}