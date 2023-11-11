import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_clone/utils/colors.dart';
import 'package:twitter_clone/widgets/text_display.dart';

class DrawerSeconndPart extends StatelessWidget {
  const DrawerSeconndPart({Key? key}) : super(key: key);

  Widget listTile(String input, IconData icon) {
    return ListTile(
      tileColor: transparent,
      leading: Icon(
        icon,
        color: profileTextColor,
        size: 30,
      ),
      title: TextDisplay(
        textSize: 20,
        input: input,
        txtColor: textColor,
        fontWeth: FontWeight.bold,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.4,
      child: Column(
        children: [
          listTile('Profile', Icons.person_outline),
          listTile('Topics', Icons.chat_outlined),
          listTile('Bookmarks', Icons.bookmark_outline_rounded),
          listTile('Lists', Icons.article_outlined),
          listTile('Twitter Circle', Icons.group),
          const SizedBox(height: 5),
          const Divider(thickness: 0.3, color: Colors.grey)
        ],
      ),
    );
  }
}
