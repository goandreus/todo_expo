import 'package:flutter/material.dart';

GlobalKey<FormState> formContactKey = GlobalKey<FormState>();
GlobalKey<ScaffoldState> formPageKey = GlobalKey<ScaffoldState>();

class FormContactPage extends StatefulWidget {
  @override
  _FormContactPageState createState() => _FormContactPageState();
}

class _FormContactPageState extends State<FormContactPage> {

  TextEditingController _nameController;
  TextEditingController _nicknameController;
  TextEditingController _telefonoController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: '');
    _nicknameController = TextEditingController(text: '');
    _telefonoController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    print(_nameController.text);
    return Scaffold(
      key: formPageKey,
      appBar: AppBar(
       // automaticallyImplyLeading: false,
        title: Text('New contact'),
      ),
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
          child: Form(
            key: formContactKey,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Nombre',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).primaryColor)
                      ),
                      labelText: 'Ej. Andres Chavez'
                    ),
                    controller: _nameController,
                    onChanged: (value) => print(_nameController.text),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'NickName',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).primaryColor)
                      ),
                      labelText: 'NickName'
                    ),
                    controller: _nicknameController,
                    onChanged: (value) => print(_nicknameController.text),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Telefono',
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).primaryColor)
                      ),
                      labelText: 'Ej. (+591) 978757741'
                    ),
                    controller: _telefonoController,
                    onChanged: (value) => print(_telefonoController.text),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
