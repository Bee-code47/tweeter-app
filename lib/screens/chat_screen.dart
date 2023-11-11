import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/chat_listtile.dart';

import '../utils/colors.dart';
import '../widgets/image_avatar.dart';
import '../widgets/text_display.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({Key? key}) : super(key: key);

  static const routeName = '/chat-screen';

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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ImageAvatar(),
                      Container(
                          height: 35,
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                              color: Colors.blueGrey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20)),
                          width: size.width * 0.7,
                          child: TextField(
                            style: const TextStyle(color: textColor),
                            decoration: InputDecoration(
                                focusedBorder: InputBorder.none,
                                hintText: "Search Direct Messages",
                                hintStyle:
                                    TextStyle(color: Colors.blueGrey[800])),
                          )),
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.settings_outlined,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  Container(
                      height: size.height * 0.83,
                      width: size.width,
                      child: ListView.builder(
                        itemCount: 15,
                        itemBuilder: (context, index) => ChatListTile(),
                      )),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 15,
            right: 2,
            child: FloatingActionButton(
              onPressed: null,
              child: Icon(Icons.mark_email_unread_outlined),
            ),
          )
        ],
      ),
    );
  }
}
