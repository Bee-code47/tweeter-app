import 'package:flutter/material.dart';

class ProfileImageAvatar extends StatelessWidget {
  const ProfileImageAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      child: GestureDetector(
        onTap: null,
        child: const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/images/wiz.jpg'),
        ),
      ),
    );
  }
}
