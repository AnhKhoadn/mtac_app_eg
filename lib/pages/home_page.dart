import 'package:flutter/material.dart';
import 'package:mtac_app_eg/buttons/archive_button.dart';
import 'package:mtac_app_eg/buttons/floating_chat_button.dart';
import 'package:mtac_app_eg/list_view/recycle_list_view.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: const FloatingChatButton(),
        appBar: AppBar(
          title: const Text(
            'MTAC',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/notification_page');
                },
                icon: const SizedBox(
                  width: 30,
                  height: 30,
                  child: Icon(
                    Icons.notifications_none_outlined,
                    size: 35,
                  ),
                ))
          ],
        ),
        body: const Column(
          children: [
            ArchiveButton(),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Icon(Icons.recycling, size: 25,),
                  Text('Tái chế', style: TextStyle(fontSize: 25),)
                ],
              ),
            ),
            RecycleListView(),
          ],
        ));
  }
}
