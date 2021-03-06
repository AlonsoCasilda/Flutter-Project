import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = '';
  String _email = '';
  String _fecha = '';

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }
  Widget _crearInput() {
    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras ${_nombre.length}'),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Solo es el nombre',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
      ),
      onChanged: (value) {
        setState(() {
          _nombre = value;
        });
      },

    );
  }
    Widget _crearPersona() {
    return ListTile(
      title: Text('Name: $_nombre'),
      subtitle: Text('Email: $_email'),
    );
  }

    Widget _crearEmail() {
      return TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0)
          ),
          hintText: 'Email',
          labelText: 'Email',
          helperText: 'Pon tu Email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email),
        ),
        onChanged: (value) => setState(() {
            _email = value;
          })
      );
    }

    Widget _crearPassword() {
      return TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0)
            ),
            hintText: 'Password',
            labelText: 'Password',
            helperText: 'Escribe tu contraseña',
            suffixIcon: Icon(Icons.lock_open),
            icon: Icon(Icons.lock),
          ),
          onChanged: (value) => setState(() {
            _email = value;
          })
      );
    }
    
    Widget _crearFecha(BuildContext context) {
      return TextField(
        enableInteractiveSelection: false,
          controller: _inputFieldDateController,
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0)
            ),
            hintText: 'Fecha de nacimiento',
            labelText: 'Fecha de nacimiento',
            helperText: 'Escribe tu contraseña',
            suffixIcon: Icon(Icons.perm_contact_calendar),
            icon: Icon(Icons.calendar_today),
          ),
         onTap: () {
          
          FocusScope.of(context).requestFocus(new FocusNode());
          _selectDate(context);
          
         },
      );
    
  }

    _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(1970),
        lastDate: new DateTime(2021),
      locale: Locale('es', 'ES')
      );
    if (picked != null){
      setState(() {
        _fecha = picked.toString();
        _inputFieldDateController.text = _fecha;
      });
      }
    }
}
