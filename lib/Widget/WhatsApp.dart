import 'package:flutter/material.dart';
class WhatsApp extends StatefulWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 4,
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
                indicatorColor: Colors.white,
                indicatorWeight: 5,
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
