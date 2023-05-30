import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade700,
        title: Text(
          'Drawer Widget',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(

        child: Container(
          color: Colors.blueGrey,
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Container(
                    //color: Colors.blue.shade800,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              'https://scontent.fdac99-1.fna.fbcdn.net/v/t39.30808-6/340620783_890937765345876_7740305824492697715_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeF6tT1opXXQtFSszHmRwfd-mfhdIDO1-AGZ-F0gM7X4AXVZfXq_8macttirwhYgB5DWFG1xKzhG_sUO-5wOz6Je&_nc_ohc=faclLQu0nKcAX84xttb&_nc_ht=scontent.fdac99-1.fna&oh=00_AfCVOaytffPtuWvEKZtKZvpB09zQU1e7ZtdmxP5JbnRQWQ&oe=646BFA03'),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Tanjid Hossain Amran'),
                            Text('tanjidamran11@gmail.com')
                          ],
                        )
                      ],
                    ),
                  )
              ),
              SizedBox(child: Container(
                color: Colors.white30,
                height: 5,
              ),),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text('My Files'),
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text('Shared with me'),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text('Starred'),
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text('Trash'),
              ),
              ListTile(
                leading: Icon(Icons.upload),
                title: Text('Uploads'),
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text('Share'),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: Center(
          child:Builder(
            builder: (context) {
              return ElevatedButton(onPressed: (){
                Scaffold.of(context).openDrawer();
              },
                child: Text('Open Drawer'),
              );
            }
          ),
          ),
        ),
      );
  }
}
