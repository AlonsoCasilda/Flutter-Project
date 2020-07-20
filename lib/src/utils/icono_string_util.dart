/*
* Metodo que al llamarlo dánsole el nombre del icono va a buscar en el mapa y retornarlo*/
import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  "add_alert": Icons.add_alert,
  "accessibility": Icons.accessibility,
  "folder_open": Icons.folder_open,

};

Icon getIcon (String nombreicono){
  return Icon(_icons[nombreicono], color: Colors.blue,);
}