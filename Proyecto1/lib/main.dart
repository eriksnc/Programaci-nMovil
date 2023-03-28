// Libreria para importar

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:proyecto1/barra.dart';
import 'package:proyecto1/Control_Almacenamiento.dart';


//Inicia la aplicación no recive nada y no tiene atributos
void main() async{
  await ControlAlmacenamiento.configurePrefs();
  // Corre la aplicacion , construye la clase
  runApp(const MyApp());
}

//
class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  // Construye in widget en un contexto
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Primera Asignación',
      theme: ThemeData
      (
        primarySwatch: Colors.blue,
      ),
      home:const barra(),
    );
  }
}

