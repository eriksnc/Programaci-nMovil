// Libreria para importar
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:proyecto1/barra.dart';


//Inicia la aplicación no recive nada y no tiene atributos
void main() {
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
      home:barra(),
    );
  }
}

