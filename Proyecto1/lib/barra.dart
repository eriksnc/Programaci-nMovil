// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:proyecto1/calculadora.dart';
import 'package:proyecto1/cuadroDeTexto.dart';

class barra extends StatefulWidget
{
  const barra({Key? key}) : super(key: key);

  @override
  _BasicBarraState createState() => _BasicBarraState();
}


class _BasicBarraState extends State<barra> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 50, fontWeight: FontWeight.bold);

  static const List<Widget> _paginas = <Widget>[
      Icon(Icons.home,size: 250),
      calculadora(),
      cuadroDeTexto(),

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Primera Asignacion'),
      ),
      body: Center(
        child: _paginas.elementAt(_selectedIndex),
      ),
      /// NAVEGADOR
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate_outlined),
            label: 'Calculadora',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            label: 'Ingreso de datos',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[80],
        onTap: _onItemTapped,
      ),

    );
  }
}