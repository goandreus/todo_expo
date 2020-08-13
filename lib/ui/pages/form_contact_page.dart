import 'package:flutter/material.dart';
import 'package:todo_expo/controllers/list_contacts_controller.dart';
import 'package:todo_expo/models/person_model.dart';

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

  bool validateAll(){
    if(formContactKey.currentState.validate()){
      return true;
    }else{
      formPageKey.currentState.showSnackBar(SnackBar(content: Text('Insert data'),));
      return false;
    }
  }

  ListContactController _controller = ListContactController.instancia;
  PersonModel _person = PersonModel();

  String validate(String value, String key) => value.isEmpty ? 'Insert to ${key}' : null; 

  @override
  Widget build(BuildContext context) {
    print(_nameController.text);
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        key: formPageKey,
        appBar: AppBar(
         // automaticallyImplyLeading: false,
          title: Text('New contact'),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formContactKey,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    validator: (value) => validate(value, "Name"),
                    decoration: InputDecoration(
                      hintText: 'Nombre',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).primaryColor)
                      ),
                      labelText: 'Ej. Andres Chavez'
                    ),
                    controller: _nameController,
                    onChanged: (value) => _person.nombre = value,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    validator: (value) => validate(value, "NickName"),
                    decoration: InputDecoration(
                      hintText: 'NickName',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).primaryColor)
                      ),
                      labelText: 'NickName'
                    ),
                    controller: _nicknameController,
                    onChanged: (value) => _person.nickName = value,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    validator: (value) => validate(value, "Phone"),
                    decoration: InputDecoration(
                      hintText: 'Phone',
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).primaryColor)
                      ),
                      labelText: 'Ej. (+591) 978757741'
                    ),
                    controller: _telefonoController,
                    onChanged: (value) => _person.telefono = value,
                  ),
                  SizedBox(height: 20,),
                  RaisedButton(
                    color: Theme.of(context).primaryColor,
                    onPressed: (){
                      if(validateAll()){
                        _controller.contacts.value = List.from(_controller.contacts.value)..add(_person);
                      }
                    },
                    child: Text('Add Contac',
                    style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
