import 'package:flutter/material.dart';
import 'package:month_plan/Widget/AlertDialogWidget.dart';
import 'package:month_plan/Widget/BottomSheetWIdget.dart';
import 'package:month_plan/Widget/DrawerWidget.dart';
import 'package:month_plan/Widget/SnackBarWidget.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  _BottomNavigationWidgetState  createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int selectedindex = 0;
  PageController pageController = PageController();
  /* List<Widget> widgets=[
    Text('Home'),
    Text('Search'),
    Text('Add'),
    Text('Profile'),
  ];*/
  void onTapped(int index) {
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Center(child: Text("Bottom Navigation"))),
      body: PageView(
        controller: pageController,
        children: [
          SnackBarWidget(),
          BottomSheetWidget(),
          DrawerWidget(),
          AlertDialogWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: selectedindex,
        unselectedItemColor: Colors.yellow,
        selectedIconTheme: IconThemeData(color: Colors.green),
        iconSize: 35,
        onTap: onTapped,
      ),
    );
  }
}
