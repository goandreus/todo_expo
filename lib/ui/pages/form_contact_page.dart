import 'package:flutter/material.dart';

class FormContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('New contact'),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            onPressed: () {
              Navigator.of(context).pop(); //Necesario para el arbol de widgets
              //Navigator.pop(context); //Va directo
            },
            child: Text('Regresar'),
          ),
        ),
      ),
    );
  }
}
