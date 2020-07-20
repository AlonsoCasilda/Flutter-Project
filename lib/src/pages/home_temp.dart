import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 32,
        title: Column(
          children: <Widget>[
            Text(' '),
            Text('Componentes Temp'),
          ],
        ),
      ),
      body: ListView(
        //children: _crearItems()
          children: _crearItemsCorta()
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();
    //recorre array opciones
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)..add(Divider(color: Colors.blue,));
    }

    return lista;
  }

  /*
  Metodo Map para lista
   */
  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Subtitulo'),
            leading: Icon(Icons.map),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){},
          ),
          Divider(color: Colors.blue,)
        ],
      );
    }).toList();

  }
}
