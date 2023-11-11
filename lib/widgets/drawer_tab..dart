import 'package:flutter/material.dart';
import 'package:twitter_clone/utils/colors.dart';
import 'package:twitter_clone/widgets/drawerWigets/first_part_of_drawer.dart';
import 'package:twitter_clone/widgets/drawerWigets/second_part_of_drawer.dart';
import 'package:twitter_clone/widgets/drawerWigets/third_part_of_drawer.dart';
import 'package:twitter_clone/widgets/drawer_icon.dart';
import 'package:twitter_clone/widgets/text_display.dart';

class DrawerTab extends StatelessWidget {
  DrawerTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: GestureDetector(
        onHorizontalDragEnd: (details) => Navigator.of(context).pop(),
        child: Drawer(
          backgroundColor: backgroundColor,
          child: Container(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
            child: Column(
              children: [
                DrawerFirstPart(),
                DrawerSeconndPart(),
                DrawerThirdPart(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.lightbulb_outline_rounded,
                      color: textColor,
                    ),
                    Icon(
                      Icons.qr_code,
                      color: textColor,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
