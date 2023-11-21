import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_models.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (BuildContext context, int i) {
        return Column(
          children: <Widget>[
            Divider(
              height: 10.0,
            ),
            ListTile(
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(dummyData[i].avatarUrl),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    dummyData[i].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    dummyData[i].time,
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ],
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  dummyData[i].message,
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
