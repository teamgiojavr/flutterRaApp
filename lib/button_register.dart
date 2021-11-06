import 'package:flutter/material.dart';
import 'main.dart';

class ButtonRegister extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => GenerarGabinente())
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 490.0, left: 20.0, right: 20.0),
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
    );
  }
}