import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/user_model.dart';
import 'package:whatsapp_ui/screen/ChatDetailPage.dart';

class chatpage extends StatefulWidget {
  const chatpage({Key? key}) : super(key: key);

  @override
  _chatpageState createState() => _chatpageState();
}

class _chatpageState extends State<chatpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            itemCount: chatData.length,
            itemBuilder: (context, i) => Column(children: [
                  Divider(
                    height: 10.0,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      backgroundImage: AssetImage(chatData[i].avatar),
                    ),
                    title: Text(
                      chatData[i].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      chatData[i].message,
                      style: TextStyle(color: Colors.blueGrey, fontSize: 15.0),
                    ),
                    trailing: Text(
                      chatData[i].time,
                      style: TextStyle(color: Colors.blueGrey, fontSize: 14.0),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChatDetailPage()));
                    },
                  ),
                ])));
  }
}
