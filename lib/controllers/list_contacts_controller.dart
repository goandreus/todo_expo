import 'package:flutter/cupertino.dart';
import 'package:todo_expo/models/person_model.dart';

class ListContactController {
  static List<PersonModel> persons = [
    persona1,
    persona2,
    persona3,
    persona3,
  ];

  static final ListContactController instancia = ListContactController._();

  ListContactController._();

  ValueNotifier<List<PersonModel>> contacts =
      ValueNotifier<List<PersonModel>>(persons);
}
