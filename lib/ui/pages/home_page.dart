import 'package:flutter/material.dart';
import 'package:todo_expo/models/person_model.dart';
import 'package:todo_expo/ui/widgets/custom_buttons.dart';
import 'package:todo_expo/ui/widgets/custom_listtile.dart';

List<PersonModel> persons = [
  persona1,
  persona2,
  persona3,
  persona1,
  persona2,
  persona3,
  persona1,
  persona2,
  persona3,
  persona1,
  persona2,
  persona3,
];

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  final titulo = 'Material App';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Prueba');
        },
        child: Icon(Icons.adb),
      ),
      appBar: AppBar(
        title: Text(titulo),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          IconButton(onPressed: () {}, icon: Icon(Icons.image)),
          IconButton(onPressed: () {}, icon: Icon(Icons.message)),
        ],
      ),
      body: Column(
        children: <Widget>[
          CustomButton(),
          buttons(),
          Expanded(
            child: ListView(
              children: <Widget>[
                for (int i = 0; i < persons.length; i++)
                  CustomListTile(person: persons[i])
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buttons() {
    return FlatButton(
      onPressed: () {},
      child: Text('Flat button'),
    );
  }
}


