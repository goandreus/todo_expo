import 'package:flutter/material.dart';
import 'package:todo_expo/controllers/main_controller.dart';
import 'package:todo_expo/controllers/theme_controller.dart';

class CustomButton extends StatefulWidget {
  
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  ValueNotifier<String> titulo = ValueNotifier<String>('Add Contact');

  ThemeController _controller = ThemeController.instance;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _controller.changeTheme(true);
        titulo.value = "Value notifier button";
        pressButton();
        // setState(() {
        //   titulo = 'Tittle Button';
        // });
        Navigator.pushNamed(context, 'form_contact');
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
              style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 20.0, fontFamily: 'Better'),
            ),
          ),
        );
        },
      ),
    );
  }
}