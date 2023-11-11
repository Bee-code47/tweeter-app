

import 'package:flutter/material.dart';

class ButtomIcon extends StatelessWidget {
   ButtomIcon({Key? key, required this.icon,}) : super(key: key);
   IconData icon;


  @override
  Widget build(BuildContext context) {
    return Icon(
          icon,
          color: Colors.white,
        );
  }
}
