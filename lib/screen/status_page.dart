import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/statusmodel.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blueGrey,
            backgroundImage: AssetImage('images/pankaj.jpg'),
          ),
          title: Text(
            'My Status',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            'Tap to add status update',
            style: TextStyle(color: Colors.blueGrey, fontSize: 15.0),
          ),
        ),
        Divider(),
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Recent updates',
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              )),
        ),
        Flexible(
            child: ListView.builder(
          itemCount: statusData.length,
          itemBuilder: (context, i) => Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  backgroundImage:
                      AssetImage(statusData[i].avatar ?? 'image/no_image.jpg'),
                ),
                title: Text(
                  statusData[i].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  statusData[i].time,
                  style: TextStyle(color: Colors.blueGrey, fontSize: 15.0),
                ),
              )
            ],
          ),
        ))
      ],
    );
  }
}
