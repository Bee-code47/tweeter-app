import 'package:flutter/material.dart';
import 'package:twitter_clone/utils/colors.dart';
import 'package:twitter_clone/widgets/text_display.dart';

class DrawerThirdPart extends StatelessWidget {
  const DrawerThirdPart({Key? key}) : super(key: key);

  Widget listTile(String input, bool isPressed, {Function? iconFn}) {
    return ListTile(
        tileColor: transparent,
        leading: TextDisplay(
          input: input,
          textSize: 15,
          txtColor: textColor,
          fontWeth: FontWeight.w600,
        ),
        trailing: IconButton(
          onPressed: () => iconFn,
          icon: Icon(
            isPressed ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
            color: textColor,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        height: size.height * 0.15,
        child: Column(
          children: [
            listTile('Creator Studio', true),
            listTile('Professional Tools', false),
            listTile('Settings & Support', true),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
