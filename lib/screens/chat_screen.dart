import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/widgets/info.dart';
import 'package:whatsapp_clone/widgets/massageApp_screen.dart';

class chatScreen extends StatelessWidget {
  const chatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: info.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Get.off(massageScreen());
              },
              child: ListTile(
                title: Text(
                  info[index]['name'].toString(),
                  style: const TextStyle(fontSize: 20),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    info[index]['message'].toString(),
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(info[index]['profilePic'].toString()),
                ),
                trailing: Text(
                  info[index]['time'].toString(),
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
