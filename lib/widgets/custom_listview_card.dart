import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class customListView extends StatelessWidget {
  customListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
        ),
        //circle avatr
        title: Text(
          'Zakaria Hassan',
          style: TextStyle(color: textColor, fontSize: 18),
        ),
        subtitle: Row(
          children: [
            Icon(Icons.done_all),
            SizedBox(
              width: 5,
            ),
            Text('Asalamu Allikum Dev.zack'),
          ],
        ),

        trailing: Text('19:00'),
      ),
    );
  }
}
