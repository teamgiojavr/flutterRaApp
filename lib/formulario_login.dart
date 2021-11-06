import 'package:flutter/material.dart';

class FormularioLogin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

  //input que recibira los datos del email:
  final inputEmail = Padding(
    padding: EdgeInsets.only(top: 40),
    child: TextField(
      decoration: InputDecoration(
          labelText: 'Correo',
          labelStyle: TextStyle(color: Colors.blue),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: Colors.blue),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.blue),
              borderRadius: BorderRadius.circular(15))),
    ),
  );

  //input que recibira los datos de la contraseña:
  final inputPassword = Padding(
    padding: EdgeInsets.only(top: 30),
    child: TextField(
      decoration: InputDecoration(
          labelText: 'Contraseña',
          labelStyle: TextStyle(color: Colors.blue),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: Colors.blue),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.blue),
              borderRadius: BorderRadius.circular(15))),
    ),
  );


  //Contendra los widgets del formulario:
  final formulario = Container(
    padding: EdgeInsets.only(
      top: 120.0,
      left: 20.0,
      right: 20.0
    ),
    child: ListView(
      children: [
        inputEmail,
        inputPassword
      ],
    ),
  );

    return formulario;
  }
}
