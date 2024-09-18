import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FloatingChatButton extends StatelessWidget {
  const FloatingChatButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xFFF44336),
      shape: const CircleBorder(),
      child: const Icon(
        CupertinoIcons.bubble_left_bubble_right_fill,
        color: Colors.white,
        size: 30,
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/chat_page');
      },
    );
  }
}
