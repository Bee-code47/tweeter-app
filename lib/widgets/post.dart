import 'package:flutter/material.dart';
import 'package:twitter_clone/utils/colors.dart';
import 'package:twitter_clone/widgets/image_avatar.dart';
import 'package:twitter_clone/widgets/profile_image_display.dart';
import 'package:twitter_clone/widgets/text_display.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(right: 8, left: 8, top: 0, bottom: 0),
      height: 520,
      width: size.width,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileImageAvatar(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      TextDisplay(
                          input: 'Displayname',
                          textSize: 15,
                          txtColor: textColor),
                      const SizedBox(width: 5),
                      TextDisplay(
                          input: '@username',
                          textSize: 13,
                          txtColor: textColor),
                      Container(width: size.width * 0.337),
                      Icon(
                        Icons.more_vert,
                        color: profileTextColor,
                        size: 15,
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(2),
                    height: 40,
                    width: size.width * 0.78,
                    child: TextDisplay(
                        input: 'Top 10 heighest paid footballer in the world',
                        textSize: 12,
                        txtColor: textColor),
                  ),
                  const SizedBox(height: 5),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      //postimage
                      height: 400,
                      width: size.width * 0.78,
                      child: Image.asset(
                        'assets/images/wiz.jpg',
                        fit: BoxFit.cover,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    width: size.width * 0.78,
                    height: 30,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton.icon(
                            onPressed: null,
                            icon: Icon(
                              Icons.chat,
                              color: icongreyColor,
                              size: 20,
                            ),
                            label: TextDisplay(
                                textSize: 12,
                                input: '3,374',
                                txtColor: icongreyColor)),
                        Container(width: size.width * 0.06),
                        TextButton.icon(
                            onPressed: null,
                            icon: Icon(
                              Icons.loop_outlined,
                              color: icongreyColor,
                              size: 20,
                            ),
                            label: TextDisplay(
                                textSize: 12,
                                input: '4,374',
                                txtColor: profileTextColor!)),
                        Container(width: size.width * 0.015),
                        TextButton.icon(
                            onPressed: null,
                            icon: Icon(
                              Icons.favorite_outline,
                              color: icongreyColor,
                              size: 20,
                            ),
                            label: TextDisplay(
                                textSize: 12,
                                input: '3,374',
                                txtColor: icongreyColor)),
                        Container(width: size.width * 0.1),
                        Expanded(
                          child: IconButton(
                              onPressed: null,
                              icon: Icon(Icons.share_outlined,
                                  color: icongreyColor, size: 20)),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          const Divider(thickness: 0.1, color: Colors.grey)
        ],
      ),
    );
  }
}
