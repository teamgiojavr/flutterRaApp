import 'package:flutter/material.dart';
import 'custom_clipper.dart';

//Header hecho para los dos formularios ya que se pude reutilizar el codigo
//al recibir los parametros title por medio de un constructor

class HeaderLogin extends StatelessWidget {

  String title = 'LOGIN';

  HeaderLogin(this.title);

  @override
  Widget build(BuildContext context) {

    final header = ClipPath(
      clipper: CustomClipp(),
      child: Container(
        height: 220.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.indigo.shade900,
              Colors.blue
            ],
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.topRight
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(
                15.0,
                15.0
              ),
              blurRadius: 1.0,
              spreadRadius: 1.0
            )
          ]
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 45.0,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
        ),
      ),
    );
    return header;
  }
}

class B2C87 {
}
