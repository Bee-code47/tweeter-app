import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:twitter_clone/screens/chat_screen.dart';
import 'package:twitter_clone/screens/createspace_screen.dart';
import 'package:twitter_clone/screens/notificatio_screen.dart';
import 'package:twitter_clone/screens/post_screen.dart';
import 'package:twitter_clone/screens/search_screen.dart';
import 'package:twitter_clone/widgets/botton_icon.dart';
import 'package:twitter_clone/widgets/drawer_tab..dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int numVal = 0;
  bool isTrue = false;

  var _myTabs = [
    ButtomIcon(icon: Icons.home),
    ButtomIcon(icon: Icons.search_sharp),
    ButtomIcon(icon: Icons.home),
    ButtomIcon(icon: Icons.notifications_none_outlined),
    ButtomIcon(icon: Icons.mail_outlined)
  ];

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(initialIndex: 0, length: _myTabs.length, vsync: this);
    FlutterNativeSplash.remove();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerTab(),
      body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: [
            PostScreen(),
            SearchScreen(),
            CreatespaceScreen(),
            NotificationScreen(),
            ChatScreen()
          ]),
      bottomNavigationBar: Container(
        height: 45,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Divider(thickness: 0.5, color: Colors.grey),
            TabBar(
              onTap: (value) {
                setState(() {
                  numVal = value;
                });
              },
              indicatorWeight: 1,
              indicatorColor: Colors.transparent,
              controller: _tabController,
              tabs: [
                ButtomIcon(
                    icon:
                        numVal == 0 ? Icons.home_filled : Icons.home_outlined),
                ButtomIcon(
                    icon: numVal == 1
                        ? Icons.search_rounded
                        : Icons.search_outlined),
                ButtomIcon(
                    icon: numVal == 2
                        ? Icons.keyboard_voice
                        : Icons.keyboard_voice_outlined),
                ButtomIcon(
                    icon: numVal == 3
                        ? Icons.notifications
                        : Icons.notifications_none_outlined),
                ButtomIcon(
                    icon:
                        numVal == 4 ? Icons.mail_rounded : Icons.mail_outlined)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
