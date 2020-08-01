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

List<Widget> pages = [
  Container(
    child: Column(
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
  ),
  Container(
    color: Colors.red,
  )
];

Widget buttons() {
  return FlatButton(
    onPressed: () {},
    child: Text('Flat button'),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String titulo = 'Material App';

  int picker;

  @override
  void initState() {
    super.initState();
    picker = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              DrawerHeader(
                padding: EdgeInsetsDirectional.zero,
                child: Container(
                  height: 90,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              ListTile(
                title: Text('Inicio'),
                onTap: () {
                  Navigator.of(context).pop();
                  setState(() {
                    picker = 0;
                  });
                },
              ),
              ListTile(
                title: Text('Segunda Pantalla'),
                onTap: () {
                  Navigator.of(context).pop();
                  setState(() {
                    picker = 1;
                  });
                },
              ),
            ],
          ),
        ),
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
        body: pages[picker],
      ),
    );
  }
}
