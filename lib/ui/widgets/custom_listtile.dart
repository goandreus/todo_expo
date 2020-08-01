import 'package:flutter/material.dart';
import 'package:todo_expo/models/person_model.dart';
import 'package:todo_expo/ui/pages/contact_details_page.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({Key key, this.person}) : super(key: key);

  final PersonModel person;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Navigator.pushNamed(context, 'contact_detail', arguments: DetailsContactPageArguments(
          persona: person,
          contenido: person.nombre.contains('Andres') ? 'Contenido' : 'Contenido Explicito',
        ));
      },
        trailing: SizedBox(
          width: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(person.iconoIzquierda), Icon(Icons.call),
            ],
          ),
        ),
        leading: Icon(person.iconoIzquierda),
        title: Text(person.nombre),
        subtitle: Text(person.descripcion),
      );
  }
}