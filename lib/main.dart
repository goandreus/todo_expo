import 'package:flutter/material.dart';
import 'package:todo_expo/controllers/main_controller.dart';
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
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print('Prueba');
          },
          child: Icon(Icons.adb),
        ),
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
      
      body: Column(
        children: <Widget>[
          customButton(),
          buttons(),
          Expanded(
            child: ListView(
            children: <Widget>[
              for(int i=0;i<persons.length;i++)
              customListTitle(persons[i])
            ],
        ),
          ),
        ],
      ),)
    );
  }

  Widget buttons(){
    return FlatButton(
      onPressed: (){},
      child: Text('Flat button'),
    );
  }

  Widget customButton() => InkWell(
    onTap: (){
      pressButton();
    },
    child: Container(
              height: 60,
              width: double.infinity,
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: Text('Agregar Contacto', style: TextStyle(color: Colors.red, fontSize: 20),),
              ),
    ),
  );

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

