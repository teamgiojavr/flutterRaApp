import 'package:flutter/material.dart';
import 'header_login.dart';
import 'formulario_login.dart';
import 'button_login.dart';
import 'button_register.dart';

void main() {
  runApp(const MyApp());
}

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

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          HeaderLogin(titleLogin),
          FormularioLogin(),
          ButtonLogin(),
          ButtonRegister()
        ],
      ),
    );
  }
}

class GenerarGabinente extends StatelessWidget {
  const GenerarGabinente({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          HeaderLogin(titleRegister),
        ],
      ),
    );
  }
}
