import 'package:flutter/material.dart';

import 'package:proyecto1/calculadora.dart';
import 'package:proyecto1/cuadroDeTexto.dart';
import 'package:proyecto1/Bienvenida.dart';
import 'package:proyecto1/Coordenadas.dart';

import 'Maps.dart';

// Widget con estado
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

  static List<Widget> _paginas = <Widget>[
      Mandar(),
      calculadora(),
      cuadroDeTexto(),
      Coordenadas(),
      Maps(),

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(
        child: _paginas.elementAt(_selectedIndex),
      ),

      /// NAVEGADOR
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
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
          BottomNavigationBarItem(
            icon: Icon(Icons.add_location_alt_sharp),
            label: 'Ubicacion',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: 'Mapa',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[80],
        onTap: _onItemTapped,
      ),

    );
  }
}