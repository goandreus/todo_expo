import 'package:flutter/material.dart';

GlobalKey<FormState> formContactKey = GlobalKey<FormState>();
GlobalKey<ScaffoldState> formPageKey = GlobalKey<ScaffoldState>();

class FormContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: formPageKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('New contact'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formContactKey,
          child: Column(
            children: <Widget>[
              
            ],
          ),
        ),
      ),
    );
  }
}
