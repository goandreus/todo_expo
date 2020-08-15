import 'package:flutter/material.dart';
import 'package:todo_expo/models/person_model.dart';
import 'package:todo_expo/ui/pages/contact_details_page.dart';

const IconData whatsAppIcon = IconData(0xea93,fontFamily: 'CustomIcon');

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
          width: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(icon: Icon(whatsAppIcon), onPressed: (){},),
              IconButton(icon: Icon(Icons.call), onPressed: (){},)
            ],
          ),
        ),
        leading: CircleAvatar(child: Text(person.nombre[0].toUpperCase()),),
        title: Text(person.nombre),
        subtitle: Text(person.nickName),
      );
  }
}