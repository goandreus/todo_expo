import 'package:flutter/material.dart';
import 'package:todo_expo/controllers/list_contacts_controller.dart';
import 'package:todo_expo/ui/widgets/custom_buttons.dart';
import 'package:todo_expo/ui/widgets/custom_listtile.dart';


class ListContactPage extends StatefulWidget {
  @override
  _ListContactPageState createState() => _ListContactPageState();
}

class _ListContactPageState extends State<ListContactPage> {
  ListContactController controller = ListContactController.instancia;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller.contacts,
      builder: (BuildContext context, dynamic value, Widget child) {
        return Container(
          child: Column(
            children: <Widget>[
              CustomButton(),
              Expanded(
                child: ListView.builder(
                  itemCount: value.length,
                  itemBuilder: (context, picker) {
                    return Dismissible(
                        background: Container(
                          color: Colors.red,
                        ),
                        onDismissed: (direction) => value.removeAt(picker),
                        key: Key(picker.toString()),
                        child: CustomListTile(person: value[picker]));
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
