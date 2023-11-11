import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:twitter_clone/screens/chat_screen.dart';
import 'package:twitter_clone/screens/createspace_screen.dart';
import 'package:twitter_clone/screens/notificatio_screen.dart';
import 'package:twitter_clone/screens/post_screen.dart';
import 'package:twitter_clone/screens/search_screen.dart';
import 'package:twitter_clone/utils/colors.dart';
import 'package:twitter_clone/home_screen.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Twitter Clone',
      theme: ThemeData(
        fontFamily: 'Lato',
        appBarTheme: const AppBarTheme(backgroundColor: appbarColor),
        scaffoldBackgroundColor: backgroundColor,
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        ChatScreen.routeName: (context) => ChatScreen(),
        CreatespaceScreen.routeName: (context) => CreatespaceScreen(),
        NotificationScreen.routeName: (context) => NotificationScreen(),
        PostScreen.routeName: (context) => PostScreen(),
        SearchScreen.routeName: (context) => SearchScreen(),
      },
    );
  }
}
