import 'package:flutter/material.dart';

class PersonModel{
  final IconData iconoIzquierda;
  final IconData iconoDerecha;
  final String nombre;
  final String descripcion;

  PersonModel({this.iconoIzquierda, this.iconoDerecha, this.nombre, this.descripcion});
  
}

PersonModel persona1 = PersonModel(
    nombre: 'Andres',
    descripcion: 'Example',
    iconoDerecha: Icons.message,
    iconoIzquierda: Icons.person,
  );

  PersonModel persona2 = PersonModel(
    nombre: 'Carlos',
    descripcion: 'Example',
    iconoDerecha: Icons.message,
    iconoIzquierda: Icons.person,
  );

  PersonModel persona3 = PersonModel(
    nombre: 'Diego',
    descripcion: 'Example',
    iconoDerecha: Icons.message,
    iconoIzquierda: Icons.person,
  );