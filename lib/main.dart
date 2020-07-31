import 'package:flutter/material.dart';
import 'package:todo_expo/models/person_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  PersonModel persona1 = PersonModel(
    nombre: 'Andres',
    descripcion: 'Example',
    iconoDerecha: Icons.message,
    iconoIzquierda: Icons.person,
  );

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material'),
          actions: <Widget>[
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.menu)
              ),
              IconButton(
              onPressed: (){},
              icon: Icon(Icons.image)
              ),
              IconButton(
              onPressed: (){},
              icon: Icon(Icons.message)
              ),
          ],
        ),
      
      body: Container(
        child: customListTitle(persona1),
      ),)
    );
  }

  
  Widget customListTitle(PersonModel person){
    return ListTile(
          trailing: Icon(person.iconoDerecha),
          leading: Icon(person.iconoIzquierda),
          title: Text(person.nombre),
          subtitle: Text(person.descripcion),
        );
  }
}

