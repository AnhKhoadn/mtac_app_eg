import 'package:flutter/material.dart';
import 'package:mtac_app_eg/pages/archive_page.dart';
import 'package:mtac_app_eg/pages/chat_page.dart';
import 'package:mtac_app_eg/pages/intro_page.dart';
import 'package:mtac_app_eg/pages/login_page.dart';
import 'package:mtac_app_eg/pages/notification_page.dart';
import 'package:mtac_app_eg/pages/register_page.dart';

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
      home: const IntroPage(),
      theme: ThemeData(
        fontFamily: 'Arial',
        appBarTheme: const AppBarTheme(
          color: Color(0xFF1565C0),
          titleTextStyle: TextStyle(color: Colors.white),
          iconTheme: IconThemeData(color: Colors.white),
        )
      ),
      routes: {
        '/intro_page':(context) => const IntroPage(),
        '/home_page':(context) => const HomePage(),
        '/notification_page':(context) => const NotificationPage(),
        '/chat_page':(context) => const ChatPage(),
        '/archive_page':(context) => const ArchivePage(),
        '/login_page':(context) => const LoginPage(),
        '/register_page':(context) => const RegisterPage(),
      },
    );
  }
}


