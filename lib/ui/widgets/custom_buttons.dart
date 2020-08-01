import 'package:flutter/material.dart';
import 'package:todo_expo/controllers/main_controller.dart';
import 'package:todo_expo/ui/pages/form_contact_page.dart';

class CustomButton extends StatefulWidget {
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  String titulo;

  @override
  void initState() {
    super.initState();
    titulo = 'Add contact';
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        pressButton();
        // setState(() {
        //   titulo = 'Tittle Button';
        // });
        Navigator.pushNamed(context, 'form_contact');
      },
      child: Container(
        height: 60,
        width: double.infinity,
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            titulo,
            style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 20),
          ),
        ),
      ),
    );
  }
}