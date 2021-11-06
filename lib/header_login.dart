import 'package:flutter/material.dart';
import 'custom_clipper.dart';

class HeaderLogin extends StatelessWidget {

  String title = 'LOGIN';

  HeaderLogin(this.title);

  @override
  Widget build(BuildContext context) {

    final header = ClipPath(
      clipper: CustomClipp(),
      child: Container(
        height: 240.0,
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
