import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/drawer_icon.dart';
import 'package:twitter_clone/widgets/text_display.dart';

import '../../utils/colors.dart';

class DrawerFirstPart extends StatelessWidget {
  DrawerFirstPart({Key? key}) : super(key: key);

  String username = 'Bee_Cooh';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.19,
      margin: const EdgeInsets.only(top: 25),
      color: transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/wiz.jpg'),
              ),
              DrawerIcon(),
            ],
          ),
          const SizedBox(height: 10),
          TextDisplay(
              textSize: 20,
              input: "Tobby",
              txtColor: textColor,
              fontWeth: FontWeight.bold),
          const SizedBox(height: 5),
          TextDisplay(
            textSize: 15,
            input: '@$username',
            txtColor: profileTextColor!,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              TextDisplay(textSize: 15, input: '533', txtColor: textColor),
              const SizedBox(width: 5),
              TextDisplay(
                  textSize: 15,
                  input: 'Following',
                  txtColor: profileTextColor!),
              const SizedBox(width: 10),
              TextDisplay(textSize: 15, input: '40', txtColor: textColor),
              const SizedBox(width: 5),
              TextDisplay(
                  textSize: 15,
                  input: 'Followers',
                  txtColor: profileTextColor!),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(thickness: 0.3, color: Colors.grey),
        ],
      ),
    );
  }
}
