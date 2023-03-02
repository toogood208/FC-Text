import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_court_ui_test/utils/custom_screen_util.dart';

class ReferalCodeWidget extends StatelessWidget {
  const ReferalCodeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: getHeight(279),
      left: getWidth(18),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: getWidth(16), vertical: getHeight(16)),
        height: getHeight(85),
        width: getWidth(339),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(214, 239, 255, 1),
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tap to copy code",
              style: TextStyle(
                fontSize: getFont(12),
                color: const Color.fromRGBO(128, 128, 128, 1),
                height: getLineHiegt(size: 12, lineHeight: 14.06),
              ),
            ),
            SizedBox(
              height: getHeight(4),
            ),
            GestureDetector(
              onTap: () {
                Clipboard.setData(const ClipboardData(text: "29DBC1"))
                    .then((_) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Code  copied to clipboard")));
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "29DBC1",
                        style: TextStyle(
                          fontSize: getFont(24),
                          color: const Color.fromRGBO(26, 26, 26, 1),
                          height: getLineHiegt(size: 26, lineHeight: 28.13),
                        ),
                      ),
                      Image.asset(
                        "assets/images/copy.png",
                        width: getWidth(20),
                        height: getHeight(20),
                      ),
                    ],
                  ),
                  Container(
                    width: getWidth(69),
                    height: getHeight(30),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                    child: Center(
                      child: Text(
                        "Share",
                        style: TextStyle(
                            fontSize: getFont(14),
                            height: getLineHiegt(size: 14, lineHeight: 16.41),
                            color: const Color.fromRGBO(14, 163, 253, 1)),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
