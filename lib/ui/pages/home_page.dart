
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:todo_expo/ui/pages/list_contact_page.dart';
import 'package:todo_expo/ui/pages/user_info_page.dart';

List<Widget> pages = [
  ListContactPage(),
  UserInfoPage()
];

const IconData whatsAppIcon = IconData(0xea93,fontFamily: 'CustomIcon');

GlobalKey<ScaffoldState> homeKey = GlobalKey<ScaffoldState>();

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String titulo = 'Material App';

  int picker;

  void initDownload(){
    print('inicia la descarga de la imagen');
    Future.delayed(Duration(seconds: 2), (){
      print('Se descargo imagen');
    });
  }

  @override
  void initState() {
    super.initState();
    picker = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: homeKey,
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
                leading: Icon(MdiIcons.homeCircle),
                onTap: () {
                  homeKey.currentState
                      .showSnackBar(SnackBar(content: Text('Soy un snackbar')));
                  Navigator.of(context).pop();
                  setState(() {
                    picker = 0;
                  });
                },
              ),
              ListTile(
                leading: Icon(MdiIcons.accountBox),
                title: Text('User Info'),
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
        floatingActionButton: Builder(
          builder: (BuildContext context) {
            return FloatingActionButton(
              onPressed: () {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text('Hi Snackbar'),
                ));
                print('Prueba');
              },
              child: Icon(Icons.adb),
            );
          },
        ),
        appBar: AppBar(
          title: Text(titulo),
          actions: <Widget>[
            picker == 1 ? IconButton(icon: Icon(Icons.edit),onPressed: () {
              print('se presiono boton');
              initDownload();
              print('se esta mostrando la imagen');
            })
            : SizedBox(),
          ],
        ),
        body: pages[picker],
      ),
    );
  }
}
