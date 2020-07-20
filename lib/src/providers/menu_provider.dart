
import 'dart:convert';
//para importar el que lee json
import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider(){
    //cargarData();
  }

  //cargarData se espera a que responda rootBundle antes de finalizar el constructor
  Future <List<dynamic>> cargarData() async{
  //indicar donde esta el json // regresa un future
  final resp = await rootBundle.loadString('data/menu_opts.json');

  Map dataMap = json.decode(resp);
  //print (dataMap['rutas']);
  opciones = dataMap['rutas'];

  return opciones;

  }
}

final menuProvider = new _MenuProvider();