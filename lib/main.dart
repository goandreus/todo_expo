import 'package:flutter/material.dart';
import 'package:todo_expo/models/person_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  List<PersonModel> persons = [persona1,persona2,persona3,persona1,persona2,persona3,persona1,persona2,persona3,persona1,persona2,persona3,];

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
      
      body: ListView(
        children: <Widget>[
          for(int i=0;i<persons.length;i++)
          customListTitle(persons[i])
        ],
      ),)
    );
  }


  Widget customListTitle(PersonModel person){
    return ListTile(
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

