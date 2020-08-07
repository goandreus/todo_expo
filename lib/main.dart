import 'package:flutter/material.dart';
import 'package:todo_expo/controllers/theme_controller.dart';
import 'package:todo_expo/ui/pages/contact_details_page.dart';
import 'package:todo_expo/ui/pages/form_contact_page.dart';
import 'package:todo_expo/ui/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  ThemeController _controller = ThemeController.instance;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _controller.isDark,
      builder: (context, value, child) {
        return MaterialApp(
          routes: {
            'contact_detail': (_) => ContactDetailPage(),
            'form_contact': (_) => FormContactPage(),
          },
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            brightness: value ? Brightness.dark : Brightness.light,
            primarySwatch: Colors.green,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: HomePage(),
        );
      },
    );
  }
}
