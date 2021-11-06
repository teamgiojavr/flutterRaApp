import 'package:festodemoapp/main.dart';
import 'package:flutter/material.dart';
import 'button_gabinete.dart';

class ProyectoAutomatizacion extends StatelessWidget {

  List<dynamic> titles = [
    'como deben conducirse las señales externas al sistema E/S?',
    '¿Es necesario un conector en el armario de maniobra?',
    'Adaptar la ejecución neumática',
    '¿Es necesario una alternativa de alimentación externa en caso de falla de presión?'
  ];  

  ProyectoAutomatizacion(this.titles);

  @override
  Widget build(BuildContext context) {

    final title1 = Padding(
      padding: EdgeInsets.only(top: 25),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          titles[0],
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),        
        ),
      ), 
    );

    final title2 = Padding(
      padding: EdgeInsets.only(top: 25),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          titles[1],
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),        
        ),
      ), 
    );
  
    final title3 = Padding(
      padding: EdgeInsets.only(top: 25),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          'Adaptar la ejecución neumática',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),        
        ),
      ), 
    );

    final title4 = Padding(
      padding: EdgeInsets.only(top: 25),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          '¿Es necesario una alternativa de alimantación externa en caso de falla de presión?',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),        
        ),
      ), 
    );

    final title5 = Padding(
      padding: EdgeInsets.only(top: 25),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          '¿Cuantas válvulas de proceso accionadas neumáticamente debe controlar el armario de maniobra?',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),        
        ),
      ), 
    );

    final title6 = Padding(
      padding: EdgeInsets.only(top: 25),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          '¿Con que tensión de conexión se opera el armario de maniobra?',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),        
        ),
      ), 
    );

    final title7 = Padding(
      padding: EdgeInsets.only(top: 25),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          '¿Cual es el protocolo del bus de campo que debe emplear el armario de maniobra para comunicarse con la unidad de control de nivel superior?',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),        
        ),
      ), 
    );

    final select = Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: DropdownButton(
        hint: Text(
          'Seleccione',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 15
          ),
        ),


        dropdownColor: Colors.blue,
        elevation: 10,
        isExpanded: true,
        icon: Icon(
          Icons.arrow_drop_down,
          color: Colors.blue,
        ),
        iconSize: 40,
        items: [],
      ), 
    );

    final contenedor = Container(
      padding: EdgeInsets.only(top: 120.0, left: 20.0, right: 20.0),
      child: ListView(
        children: [
          title1,
          select,
          title2,
          select,
          title3,
          title4,
          select,
          title5,
          select,
          title6,
          select,
          title7,
          select,
          ButtonGabinete()
        ],
      ),
    );
    return contenedor;
  }
}
