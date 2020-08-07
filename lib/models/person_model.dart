import 'package:flutter/material.dart';

class PersonModel{
   IconData iconoIzquierda;
   IconData iconoDerecha;
   String nombre;
   String descripcion;
   String nickName;
   String telefono;

  PersonModel({this.iconoIzquierda, this.iconoDerecha, this.nombre, this.descripcion, this.nickName, this.telefono});
  
}

PersonModel persona1 = PersonModel(
    nombre: 'Andres',
    descripcion: 'Example',
    iconoDerecha: Icons.message,
    iconoIzquierda: Icons.person,
    nickName: 'goandreus'
  );

  PersonModel persona2 = PersonModel(
    nombre: 'Carlos',
    descripcion: 'Example',
    iconoDerecha: Icons.message,
    iconoIzquierda: Icons.person,
    nickName: 'alvar'
  );

  PersonModel persona3 = PersonModel(
    nombre: 'Diego',
    descripcion: 'Example',
    iconoDerecha: Icons.message,
    iconoIzquierda: Icons.person,
    nickName: 'freelo'
  );