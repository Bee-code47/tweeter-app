

import 'package:flutter/material.dart';
import 'package:twitter_clone/utils/colors.dart';

class TextDisplay extends StatelessWidget {
  const TextDisplay({
    Key? key,
    required this.textSize,
    required this.input,
    required this.txtColor,
     this.fontWeth=FontWeight.normal,
  }) : super(key: key);

  final String input;
  final double textSize;
  final Color txtColor;
  final FontWeight fontWeth;

  @override
  Widget build(BuildContext context) {
    return Text(
      input,
      style:
          TextStyle(fontSize: textSize, color: txtColor, fontWeight: fontWeth),
    );
  }
}
