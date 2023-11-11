import 'package:flutter/material.dart';
import 'package:twitter_clone/utils/colors.dart';
import 'package:twitter_clone/widgets/image_avatar.dart';
import 'package:twitter_clone/widgets/text_display.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);
  static const routeName = '/notification-screen';

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Stack(
        children: [
          Container(
            child: Column(
              children: [
                AppBar(
                  leading: ImageAvatar(),
                  title: TextDisplay(
                      input: 'Notifications',
                      textSize: 20,
                      txtColor: textColor),
                  actions: [
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.settings_outlined,
                        color: textColor,
                      ),
                    ),
                  ],
                ),
                TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    controller: _tabController,
                    tabs: [
                      Container(
                          width: 65,
                          margin: const EdgeInsets.only(bottom: 15),
                          alignment: Alignment.center,
                          child: TextDisplay(
                              textSize: 15, input: 'All', txtColor: textColor)),
                      Container(
                          width: 65,
                          margin: const EdgeInsets.only(bottom: 15),
                          alignment: Alignment.center,
                          child: TextDisplay(
                              textSize: 15,
                              input: 'Mentions',
                              txtColor: textColor)),
                    ]),
                Container(
                  height: size.height * 0.769,
                  width: size.width,
                  child: TabBarView(controller: _tabController, children: [
                    Container(
                      alignment: Alignment.center,
                      child: TextDisplay(
                          textSize: 30,
                          input: 'Notification all',
                          txtColor: textColor),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: TextDisplay(
                          textSize: 30,
                          input: 'Notification mention',
                          txtColor: textColor),
                    )
                  ]),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            right: 2,
            child:
                FloatingActionButton(onPressed: null, child: Icon(Icons.add)),
          )
        ],
      ),
    );
  }
}
