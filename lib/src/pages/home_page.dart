import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    //print(menuProvider.opciones);
    /*Regresa un future
    menuProvider.cargarData().then((opciones) {
      print('_lista');
      print(opciones);
    }); */
    /*FutureBuilder*/
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [], //podriamos meter un loading
      builder: (context, AsyncSnapshot <List<dynamic>> snapshot) {
        print('builder');
        print(snapshot.data);

        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    //if(data == null) {return [];}

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),//se llama al nombre del icono con el foreach
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {//navegar a otra pantalla onTap

          /*Ir a otra pagina metodo clásico*/
          /*final route = MaterialPageRoute(
            builder: (context) => Alertpage()
          );
          Navigator.push(context, route);*/

          /*Ir a otro activity metoso para cuando tenemos muchas posibilidades "Rutas con nombre"*/
          Navigator.pushNamed(context, opt['ruta']);
        },
      );
      opciones..add(widgetTemp)..add(Divider());
    });

    return opciones;
  }
}
