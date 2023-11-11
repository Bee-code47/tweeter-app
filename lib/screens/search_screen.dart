import 'package:flutter/material.dart';
import 'package:twitter_clone/utils/colors.dart';
import 'package:twitter_clone/widgets/image_avatar.dart';
import 'package:twitter_clone/widgets/text_display.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);
  static const routeName = '/search-screen';

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
                                hintText: "Search Twitter",
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
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: TextDisplay(
                      textSize: 18,
                      input: 'Trends for you',
                      txtColor: textColor,
                      fontWeth: FontWeight.w400,
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
              onPressed: null,
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
    );
  }
}
