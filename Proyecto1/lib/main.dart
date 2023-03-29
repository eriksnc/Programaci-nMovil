// Libreria para importar

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:proyecto1/barra.dart';
import 'package:proyecto1/Control_Almacenamiento.dart';


//Inicia la aplicación no recibe nada y no tiene atributos
void main() async{
  await ControlAlmacenamiento.configurePrefs();
  // Corre la aplicacion y la  construye la clase
  runApp(const MyApp());
}

// hereda la informacion apartir del widget sin estado
class MyApp extends StatelessWidget
{
  //
  const MyApp({Key? key}) : super(key: key);


  // Sobre carga la construccion del widget
  @override
  // Construye in widget en un contexto
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Pantallas',
      theme: ThemeData
      (
        primarySwatch: Colors.blue,
      ),
      home:const barra(),
    );
  }
}

