import 'package:flutter/material.dart';
import 'package:wahabsapp_clone/models/chats_models.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bixData.length,
      itemBuilder: (context, i) => Column(
        children: [
          Divider(
            height: 10,
          ),
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(bixData[i].avatarurl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  bixData[i].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  bixData[i].time,
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(
                bixData[i].message,
                style: TextStyle(color: Colors.grey, fontSize: 15.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
