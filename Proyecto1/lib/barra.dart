import 'package:flutter/material.dart';
import 'package:proyecto1/calculadora.dart';

class barra extends StatefulWidget
{
  const barra({Key? key}) : super(key: key);

  @override
  //_basiccreateState createState=> _basiccreateState();
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
    const Text(
      'INICIO',
      style: optionStyle,
    ),
    calculadora(),
    const Text(
      'Informacion',
      style: optionStyle,
    ),
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
            icon: Icon(Icons.school),
            label: 'Informacion',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[80],
        onTap: _onItemTapped,
      ),

    );
  }
}