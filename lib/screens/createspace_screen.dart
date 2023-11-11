import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/image_avatar.dart';
import 'package:twitter_clone/widgets/text_display.dart';

import '../utils/colors.dart';

class CreatespaceScreen extends StatelessWidget {
  const CreatespaceScreen({Key? key}) : super(key: key);
  static const routeName = '/create-space';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ImageAvatar(),
                      Container(width: size.width * 0.05),
                      TextDisplay(
                        textSize: 20,
                        input: 'Twitter',
                        txtColor: textColor,
                        fontWeth: FontWeight.w400,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, bottom: 5),
                    child: TextDisplay(
                      textSize: 20,
                      input: 'Spaces just for you',
                      txtColor: textColor,
                      fontWeth: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, bottom: 10),
                    child: TextDisplay(
                      textSize: 15,
                      input: 'People you follow are tuning in now',
                      txtColor: profileTextColor!,
                    ),
                  ),
                  Container(
                    height: size.height * 0.8,
                    width: size.width,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 15,
            right: 2,
            child: FloatingActionButton(
                onPressed: null, child: Icon(Icons.keyboard_voice_outlined)),
          )
        ],
      ),
    );
  }
}
