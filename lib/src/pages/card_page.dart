import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cardpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards')
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                  onPressed: () {},
                  child: Text('Cancelar')
              ),
              FlatButton(
                  onPressed: () {},
                  child: Text('Ok'),
              )
            ],
          )
        ],
      ),
    );
  }

  _cardTipo2() {//tarjeta con imagen

    return Card(
      child: Column(
        children: <Widget>[
          
        Image(
          image: NetworkImage('https://www.goodfreephotos.com/albums/other-landscapes/golden-landscape-with-clouds-and-hills.jpg'),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
              child: Text('Cosas a mostrar')
          )
        ],
      ),
    );
  }
}
