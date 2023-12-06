import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/Status_screen.dart';
import 'package:whatsapp_clone/screens/chat_screen.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: const Text(
            'Whatsapp Clone',
            style: TextStyle(
                color: textColor, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
            ),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert, color: Colors.grey),
              itemBuilder: (BuildContext context) => [
                const PopupMenuItem(
                  child: Text('New Group'),
                  value: 'new_group',
                ),
                const PopupMenuItem(
                  child: Text('New Broadcast'),
                  value: 'new_broadcast',
                ),
                PopupMenuItem(
                  child: Text('Linked Device'),
                  value: 'linked_device',
                ),
                PopupMenuItem(
                  child: Text('Starred Messages'),
                  value: 'starred_messages',
                ),
                PopupMenuItem(
                  child: Text('Settings'),
                  value: 'settings',
                ),
              ],
              onSelected: (value) {
                // Handle menu item selection
                switch (value) {
                  case 'new_group':
                    // Handle "New Group" action
                    break;
                  case 'new_broadcast':
                    // Handle "New Broadcast" action
                    break;
                  case 'linked_device':
                    // Handle "Linked Device" action
                    break;
                  case 'starred_messages':
                    // Handle "Starred Messages" action
                    break;
                  case 'settings':
                    // Handle "Settings" action
                    break;
                }
              },
            ),
          ],
          bottom: const TabBar(
            indicatorWeight: 4,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            indicatorColor: tabColor,
            tabs: [
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALLS',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            chatScreen(),
            statusScreen(),
          ],
        ),
      ),
    );
  }
}
