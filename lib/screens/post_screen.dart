import 'package:flutter/material.dart';
import 'package:twitter_clone/utils/colors.dart';
import 'package:twitter_clone/widgets/botton_icon.dart';
import 'package:twitter_clone/widgets/image_avatar.dart';
import 'package:twitter_clone/widgets/post.dart';
import 'package:twitter_clone/widgets/twitter_icon.dart';

class PostScreen extends StatefulWidget {
  PostScreen({Key? key}) : super(key: key);

  static const routeName = '/post-screen';

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: backgroundColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ImageAvatar(),
                        TwitterIcon(),
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.auto_awesome_outlined,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                  const Divider(color: Colors.grey),
                  Container(
                    child: Column(
                      children: [Post(), Post(), Post(), Post()],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 15,
            right: 2,
            child: FloatingActionButton(
                onPressed: null, child: Icon(Icons.add)),
          )
        ],
      ),
    );
  }
}
