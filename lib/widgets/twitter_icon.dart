import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_clone/utils/colors.dart';

class TwitterIcon extends StatelessWidget {
  const TwitterIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(
      FontAwesomeIcons.twitter,
      size: 25,
      color: iconColor,
    );
  }
}
