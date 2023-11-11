import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/drawer_tab..dart';

class ImageAvatar extends StatefulWidget {
  const ImageAvatar({Key? key}) : super(key: key);

  @override
  State<ImageAvatar> createState() => _ImageAvatarState();
}

class _ImageAvatarState extends State<ImageAvatar> {
  void imageAvatarFn() {
    showBottomSheet(
      context: context,
      builder: (context) {
        return DrawerTab();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: imageAvatarFn,
        child: const CircleAvatar(
          radius: 18,
          backgroundImage: AssetImage('assets/images/wiz.jpg'),
        ),
      ),
    );
  }
}
