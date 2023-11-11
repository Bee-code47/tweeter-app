import 'package:flutter/material.dart';

class DrawerIcon extends StatelessWidget {
  DrawerIcon({Key? key}) : super(key: key);

  Color icColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child: Container(
        height: 26,
        width: 26,
        child: Icon(
          Icons.more_vert,
          color: icColor,
        ),
        decoration: BoxDecoration(
            border: Border.all(color: icColor),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(13)),
      ),
    );
  }
}
