import 'package:flutter/material.dart';
import 'package:food_court_ui_test/utils/custom_screen_util.dart';
import 'package:food_court_ui_test/utils/spacings.dart';
import 'package:food_court_ui_test/views/widgets/custom_action_button.dart';
import 'package:food_court_ui_test/views/widgets/custom_stacked_widget.dart';
import 'package:food_court_ui_test/views/widgets/total_earnings_widget.dart';



class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const CustomStackedWidget(),
          kHomeSmallSpacing,        
          const TotalEarningsWidget(),
         kHomeLargeSpacing,
          CustomActionButton(
            title: "How it works?",
            onTapped: () {},
          ),
        ],
      ),
    );
  }
}




