import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
        body: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 2),
            curve: Curves.bounceOut,
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              borderRadius: _borderRadius,
              color: _color,
              image: DecorationImage(
                  image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Will_Smith%27s_signature.svg/640px-Will_Smith%27s_signature.svg.png'),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: _cambiarForma,
      )
    );
  }

  void _cambiarForma() {

    final random = Random(); //metodo random generacion de numeros

    setState(() {

      _width = random.nextInt(400).toDouble();
      _height = random.nextInt(400).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(255),
          random.nextInt(255),
          random.nextInt(255),
          1,
      );

      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());

    });

  }
}
