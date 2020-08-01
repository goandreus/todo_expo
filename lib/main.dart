import 'package:flutter/material.dart';
import 'package:todo_expo/ui/pages/contact_details_page.dart';
import 'package:todo_expo/ui/pages/form_contact_page.dart';
import 'package:todo_expo/ui/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'contact_detail': (_) => ContactDetailPage(),
        'form_contact': (_) => FormContactPage(),
      },
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage());
  }
}
