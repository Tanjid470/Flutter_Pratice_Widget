import 'package:flutter/material.dart';

class List_GridView extends StatelessWidget {
  const List_GridView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("List Grid View"),
          elevation: 100,
          backgroundColor: Colors.purple.shade500,
        ),
        /* body: ListView(
          children: <Widget>[
            ListTile(
              onTap: () {
                print("Tanjid is Tap by user");
              },
             tileColor: Colors.lightGreen.shade200,
              title: Text("Tanjid"),
              subtitle: Text("Such a paradoxcial person...!!"),
              textColor: Colors.black,
              titleTextStyle:TextStyle(fontStyle: FontStyle.italic,fontSize: 30,fontWeight: FontWeight.bold),
              leading: CircleAvatar(child: Icon(Icons.dangerous_rounded),backgroundColor: Colors.yellowAccent),
            ),
            Card(
              child: ListTile(
                title: Text("Tanjid"),
                subtitle: Text("Such a paradoxcial person...!!"),
              ),
            ), Card(
              child: ListTile(
                title: Text("Tanjid"),
                subtitle: Text("Such a paradoxcial person...!!"),
              ),
            ), Card(
              child: ListTile(
                title: Text("Tanjid"),
                subtitle: Text("Such a paradoxcial person...!!"),
              ),
            ), Card(
              child: ListTile(
                title: Text("Tanjid"),
                subtitle: Text("Such a paradoxcial person...!!"),
              ),
            ), Card(
              child: ListTile(
                title: Text("Tanjid"),
                subtitle: Text("Such a paradoxcial person...!!"),
              ),
            ), Card(
              child: ListTile(
                title: Text("Tanjid"),
                subtitle: Text("Such a paradoxcial person...!!"),
              ),
            ), Card(
              child: ListTile(
                title: Text("Tanjid"),
                subtitle: Text("Such a paradoxcial person...!!"),
              ),
            ), Card(
              child: ListTile(
                title: Text("Tanjid"),
                subtitle: Text("Such a paradoxcial person...!!"),
              ),
            ), Card(
              child: ListTile(
                title: Text("End"),
                tileColor: Colors.red,
                subtitle: Text("Such a paradoxcial person...!!"),
              ),
            )


          ],
        ),*/
        body: Container(
          alignment: Alignment.center,
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 5,
                childAspectRatio: 4 / 3),
            children: <Widget>[
              Card(
                child: ListTile(
                  title: Text("Tanjid"),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("Tanjid"),
                  subtitle: Text("Subtitle"),
                  titleAlignment: ListTileTitleAlignment.center,
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("Tanjid"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
