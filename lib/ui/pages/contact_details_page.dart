import 'package:flutter/material.dart';
import 'package:todo_expo/models/person_model.dart';

class ContactDetailPage extends StatelessWidget {
  final PersonModel persona;
  final String contenido;

  const ContactDetailPage({Key key, this.persona, this.contenido}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(persona.nombre),
        centerTitle: true,
      ),
      body: Center(
        child: Text(contenido),
      ),
    );
  }
}