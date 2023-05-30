import 'package:flutter/material.dart';
import 'package:month_plan/Widget/WhatsApp.dart';
import 'package:month_plan/Widget/Container_Sized.dart';
import 'package:month_plan/Widget/RowCol.dart';
import 'package:month_plan/Widget/Button.dart';
import 'package:month_plan/Widget/List_GridView.dart';
import 'package:month_plan/Widget/SnackBarWidget.dart';
import 'package:month_plan/Widget/DismissibleWidget.dart';
import 'package:month_plan/Widget/DrawerWidget.dart';
import 'package:month_plan/Widget/BottomSheetWidget.dart';
import 'package:month_plan/Widget/BottomNavigationWidget.dart';
import 'package:month_plan/Widget/DropDownWidget.dart';
import 'package:month_plan/Widget/FormWidget.dart';
import 'package:month_plan/Widget/Stack_Position.dart';
import 'package:month_plan/Widget/TabBarWidget.dart';
import 'package:month_plan/Widget/ImagePickerWidget.dart';
import 'package:month_plan/Widget/location.dart';
import 'package:month_plan/Widget/Cloning_A_UI.dart';
import 'package:month_plan/Widget/UI2.dart';
import 'package:month_plan/Widget/Testing.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,primaryColor: Colors.purple),
      // ignore: prefer_const_constructors
      home:UI2(),
    );
  }
}
