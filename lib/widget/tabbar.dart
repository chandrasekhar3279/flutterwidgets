import 'package:flutter/material.dart';
class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Whatsapp'),
          bottom: TabBar(
            indicatorColor: Colors.black,
            tabs: [
            Tab(icon: Icon(Icons.chat) ,text: 'Chat'),
            Tab(icon: Icon(Icons.circle_outlined) ,text: 'Status'),
            Tab(icon: Icon(Icons.call) ,text: 'Calls'),
          ]),
        ),
        body: TabBarView(children: [
          Container(
            child: Center(child: Text('Chats',style: TextStyle(fontSize: 30),)),
          ),
          Container(
            child: Center(child: Text('Status',style: TextStyle(fontSize: 30),)),
          ),
          Container(
            child: Center(child: Text('Calls',style: TextStyle(fontSize: 30),)),
          )
        ]),
        
      ),
    );
  }
}