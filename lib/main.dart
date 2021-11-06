import 'package:flutter/material.dart';
import 'header_login.dart';
import 'formulario_login.dart';
import 'proyecto_automatizacion_form.dart';

void main() {
  runApp(const MyApp());
}

//Array con los parametros que recibe el formulario de proyecto de automatización:
//tiene errores no deja ingresar datos mayores a 2:
List<dynamic> titles = [
  '¿Como deben conducirse las señales externas al sistema E/S?',
  '¿Es necesario un conector en el armario de maniobra?',
  'Adaptar la ejecución neumática'
];

//Contiene los titulos de cada formulario Login y Gabinete:
String titleLogin = 'LOGIN';
String titleRegister = 'GABINETE';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: LoginForm()
    );
  }
}

//Recibe los datos que retornan las clases relacionadas al formulario de login:

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FormularioLogin(),
          HeaderLogin(titleLogin),
        ],
      ),
    );
  }
}

//Recibe los datos que retornan las clases relacionadas al formulario que genera el 
//proyecto de automatización:

class GenerarGabinente extends StatelessWidget {
  const GenerarGabinente({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: ProyectoAutomatizacion(titles),
          ),
          HeaderLogin(titleRegister),
        ],
      ),
    );
  }
}
