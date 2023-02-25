import 'package:flutter/material.dart';

class cuadroDeTexto extends StatefulWidget {
  const cuadroDeTexto({Key? key}) : super(key: key);
  @override
  _cuadrotextoState createState() => _cuadrotextoState();
}

class _cuadrotextoState extends State<cuadroDeTexto>{
  late FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // Limpia el nodo focus cuando se haga dispose al formulario
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // El primer campo de texto se enfocará tan pronto como se inicie la aplicación
            TextField(
              decoration: InputDecoration(
                  labelText: 'Ingresa tu usuario'
              ),
              autofocus: true,
            ),
            // El segundo campo de texto se enfocará cuando un usuario pulse el
            // FloatingActionButton
            TextField(
              decoration: InputDecoration(
                  labelText: 'Ingresa tu carrera'
              ),
              focusNode: myFocusNode,
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        // Cuando el botón es pulsado, pide a Flutter que haga focus sobre nuestro
        // campo de texto usando myFocusNode.
        onPressed: () => FocusScope.of(context).requestFocus(myFocusNode),
        tooltip: 'Focus Second Text Field',
        child: Icon(Icons.edit),
      ), // Esta coma final hace que el auto-formatting sea más agradable para los métodos build.
    );
  }
}