import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mtac_app_eg/pages/archive_page.dart';
import 'package:mtac_app_eg/pages/chat_page.dart';
import 'package:mtac_app_eg/pages/notification_page.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: CupertinoColors.activeBlue,
          titleTextStyle: TextStyle(color: Colors.white),
          iconTheme: IconThemeData(color: Colors.white),
        )
      ),
      routes: {
        '/notification_page':(context) => const NotificationPage(),
        '/chat_page':(context) => const ChatPage(),
        '/archive_page':(context) => const ArchivePage(),
      },
    );
  }
}


