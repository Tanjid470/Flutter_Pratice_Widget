import 'package:flutter/material.dart';

class Testing extends StatefulWidget {
  const Testing({Key? key}) : super(key: key);

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(

          appBar: AppBar(
            title: Text('Facebook'),
           /* actions: [
              IconButton(onPressed:(){
              }, icon:Icon(Icons.search)),
            ],*/
            bottom: TabBar(
                tabs:<Widget> [
                  Tab(icon: Icon(Icons.call),text: 'Chat'),
                  Tab(icon: Icon(Icons.call),),
                  Tab(icon: Icon(Icons.call),),

                ]
      ),
    ),
        endDrawer:Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(child: Container(
                margin: EdgeInsets.all(0),
                color: Colors.cyan,
              )),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text('Folder'),
              ), ListTile(
                leading: Icon(Icons.folder),
                title: Text('Folder'),
              ), ListTile(
                leading: Icon(Icons.folder),
                title: Text('Folder'),
              ),
            ],
          ),
        ) ,
        body: TabBarView(children:<Widget> [
          Container(child: Text('Stary', style: TextStyle(fontSize: 30),),),
          Container(child: Text('Chat',style: TextStyle(fontSize: 30),),),
          Container(child: Text('Status', style: TextStyle(fontSize: 30),),),
        ]),
      ),

    );
  }
}
