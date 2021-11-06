import 'package:flutter/material.dart';
import 'main.dart';

//Boton creado para el formulario de login:
//No se utilizaron botones de flutter y hice uno custom para agregar los colores

class ButtonRegister extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
     width: 200,
     padding: EdgeInsets.only(
      top: 5.0,
      left: 20.0,
      right: 20.0,
     ), 
     child: InkWell(
      onTap: () {
        
      },
      child: Container(
        width: 200,
        margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        height: 50.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
                colors: [
                  Colors.indigo.shade900,
                  Colors.blue
                ],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.topRight,
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp)),
        child: Center(
            child: Text(
          'Registrate',
          style: TextStyle(
              fontSize: 18.0, fontFamily: 'Lato', color: Colors.white),
        )),
      ),
     )
    );
  }
}