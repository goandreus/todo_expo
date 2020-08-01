import 'package:flutter/material.dart';
import 'package:todo_expo/controllers/main_controller.dart';
import 'package:todo_expo/ui/pages/form_contact_page.dart';

class CustomButton extends StatelessWidget {
  
  ValueNotifier<String> titulo = ValueNotifier<String>('Add Contact');

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        titulo.value = "Value notifier button";
        pressButton();
        // setState(() {
        //   titulo = 'Tittle Button';
        // });
        //Navigator.pushNamed(context, 'form_contact');
      },
      child: ValueListenableBuilder(
        valueListenable: titulo,
        builder: (context,value,child){
          return Container(
          height: 60,
          width: double.infinity,
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).primaryColor),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              value,
              style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 20),
            ),
          ),
        );
        },
      ),
    );
  }
}