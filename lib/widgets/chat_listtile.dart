import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/profile_image_display.dart';
import 'package:twitter_clone/widgets/text_display.dart';

import '../utils/colors.dart';

class ChatListTile extends StatelessWidget {
  const ChatListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileImageAvatar(),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 5),
            child: TextDisplay(
                textSize: 15, input: 'DisplayName', txtColor: textColor),
          ),
          const SizedBox(width: 5),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: TextDisplay(
                textSize: 13, input: '@username', txtColor: profileTextColor!),
          ),
          const SizedBox(width: 5),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: TextDisplay(
                textSize: 13,
                input: ' . 11 Aug 22',
                txtColor: profileTextColor!),
          ),
        ],
      ),
    );
  }
}
