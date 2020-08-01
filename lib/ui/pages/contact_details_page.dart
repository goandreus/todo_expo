import 'package:flutter/material.dart';
import 'package:todo_expo/models/person_model.dart';

class ContactDetailPage extends StatelessWidget {
  

 const ContactDetailPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final DetailsContactPageArguments arguments = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments.persona.nombre),
        centerTitle: true,
      ),
      body: Center(
        child: Text(arguments.contenido),
      ),
    );
  }
}

class DetailsContactPageArguments{
final PersonModel persona;
  final String contenido;

  const DetailsContactPageArguments({Key key, this.persona, this.contenido});
}
