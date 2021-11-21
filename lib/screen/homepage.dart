import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screen/call_page.dart';
import 'package:whatsapp_ui/screen/chat_screen.dart';
import 'package:whatsapp_ui/screen/status_page.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<Tab> topTabs = <Tab>[
    Tab(icon: Icon(Icons.camera_alt)),
    Tab(text: 'CHATS'),
    Tab(text: 'STATUS'),
    Tab(text: 'CALLS'),
  ];
 
  @override
  void initState() {
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
        bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: topTabs),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Text('Camera'),
          chatpage(),
          StatusPage(),
          CallPage(),
        ],
      ),
      floatingActionButton: getFAB(),
    );
  }

  getFAB() {
    if (_tabController.index == 1) {
      return FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: Icon(Icons.message, color: Colors.white),
          onPressed: () {});
    } else if (_tabController.index == 2) {
      return FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: Icon(Icons.camera_alt, color: Colors.white),
          onPressed: () {});
    } else if (_tabController.index == 3) {
      return FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: Icon(Icons.edit, color: Colors.white),
          onPressed: () {});
    } else {
      return Null;
    }
  }
}
