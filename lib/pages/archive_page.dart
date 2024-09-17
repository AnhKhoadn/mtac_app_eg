import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArchivePage extends StatelessWidget {
  const ArchivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                //open the drawer
              },
              icon: const Icon(CupertinoIcons.ellipsis))
        ],
        title: const Text(
          'Kho lưu trữ',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Hiển thị kho lưu trữ'),
      ),
    );
  }
}
