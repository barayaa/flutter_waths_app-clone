import 'package:flutter/material.dart';
import 'package:wahabsapp_clone/pages/call_screen.dart';
import 'package:wahabsapp_clone/pages/camera_screen.dart';
import 'package:wahabsapp_clone/pages/chat_screen.dart';
import 'package:wahabsapp_clone/pages/status_screen.dart';

class WathsAppHome extends StatefulWidget {
  @override
  _WathsAppHomeState createState() => _WathsAppHomeState();
}

class _WathsAppHomeState extends State<WathsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WahabsApp'),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: 'MESSAGES'),
            new Tab(text: 'STATUS'),
            new Tab(text: 'APPELS'),
          ],
        ),
        actions: [
          Icon(Icons.search),
          Icon(Icons.more_vert),
          Padding(padding: EdgeInsets.symmetric(horizontal: 6))
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(),
          new ChatScreen(),
          new StatusScreen(),
          new CallsScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.message),
        onPressed: () => print('open chats'),
      ),
    );
  }
}
