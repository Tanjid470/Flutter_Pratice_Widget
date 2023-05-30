import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text("WhatsApp",),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
              IconButton(onPressed: (){}, icon: Icon(Icons.search_off)),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
            ],
            bottom: TabBar(

                tabs:<Widget> [

              Tab(icon: Icon(Icons.people_alt_outlined),),
              Tab(icon: Icon(Icons.chat), text: 'Chat',),
              Tab(icon: Icon(Icons.local_activity_outlined), text: 'Status',),
              Tab(icon: Icon(Icons.call), text: 'Call',),
            ]),
          ),
          body: TabBarView(children: <Widget>[
            Container(child: Text('Stary', style: TextStyle(fontSize: 30),),),
            Container(child: Text('Chat',style: TextStyle(fontSize: 30),),),
            Container(child: Text('Status', style: TextStyle(fontSize: 30),),),
            Container(child: Text('Call', style: TextStyle(fontSize: 30),),),
          ]),
        ));
  }
}
