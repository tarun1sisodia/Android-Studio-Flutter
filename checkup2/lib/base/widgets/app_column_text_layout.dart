import 'package:checkup2/base/widgets/textstyle.dart';
import 'package:checkup2/base/widgets/textstyle1.dart';
import 'package:flutter/cupertino.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  const AppColumnTextLayout(
      {super.key,
      required this.topText,
      required this.bottomText,
      required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Textstyle(
          text: topText,
          align: TextAlign.start,
        ),
        Textstyle1(
          text: bottomText,
        ),
      ],
    );
  }
}
