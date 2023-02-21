// Libreria para importar
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

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
    // Construimos el objetp
    // This is the theme of your application.
    return MaterialApp(
      title: 'Bienvenido Flutter',
      theme: ThemeData
      (
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Bienvenido Flutter'), );
  }
}
// Widget con estado
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  // Como se esta pidiendo el titulo este se debe declarar como final
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// Se cambia el estado de la vista de la App
class _MyHomePageState extends State<MyHomePage> {
  Random rnd= Random();
  String _palabra = "Botón Presionado";
  String _numero = "";

  ///int _counter = 0;

  void _vaciar() {
    // Actualizar el estado con Set State
    setState(() {
      _numero="";
    });
  }
  void _uno(){
    setState((){
      _numero+="1";
    });
  }
  void _dos(){
    setState((){
      _numero+="2";
    });
  }
  void _tres(){
    setState((){
      _numero+="3";
    });
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold estante
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),

      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_numero'
              ,style: TextStyle(fontSize: 50),
            ),
            /// PRIMERA FILA
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Column(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                      onPressed:_uno ,
                      tooltip: 'Increment',
                      child: const Text("1"),backgroundColor: Colors.blue,
                    ),
                  ],
                ),
                Column(
                    children:<FloatingActionButton>[
                      FloatingActionButton(
                          onPressed:_dos,
                          child: const Text("2")
                      ),

                    ],
                ),
                Row(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                        onPressed:_tres,
                        child: const Text("3")
                    ),
                  ],
                ),
                Row(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                        onPressed:_uno,
                        child: const Text("*")
                    ),
                  ],
                ),
              ],
            ),
            /// SEGUNDA FILA
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Column(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                      onPressed:_uno ,
                      tooltip: 'Increment',
                      child: const Text("4"),backgroundColor: Colors.blue,
                    ),
                  ],
                ),
                Column(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                        onPressed:_uno,
                        child: const Text("5")
                    ),

                  ],
                ),
                Row(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                        onPressed:_uno,
                        child: const Text("6")
                    ),
                  ],
                ),
                Row(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                        onPressed:_uno,
                        child: const Text("-")
                    ),
                  ],
                ),
              ],
            ),
            /// TERCERA FILA
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Column(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                      onPressed:_uno ,
                      tooltip: 'Increment',
                      child: const Text("7"),backgroundColor: Colors.blue,
                    ),
                  ],
                ),
                Column(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                        onPressed:_uno,
                        child: const Text("8")
                    ),

                  ],
                ),
                Row(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                        onPressed:_uno,
                        child: const Text("9")
                    ),
                  ],
                ),
                Row(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                        onPressed:_uno,
                        child: const Text("+")
                    ),
                  ],
                ),
              ],
            ),
            /// CUARTA FILA
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Column(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                      onPressed:_uno ,
                      tooltip: 'Increment',
                      child: const Text("0"),backgroundColor: Colors.blue,
                    ),
                  ],
                ),
                Column(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                        onPressed:_uno,
                        child: const Text(".")
                    ),

                  ],
                ),
                Row(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                        onPressed:_uno,
                        child: const Text("=")
                    ),
                  ],
                ),
                Row(
                  children:<FloatingActionButton>[
                    FloatingActionButton(
                        onPressed:_uno,
                        child: const Text("/")
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _vaciar,
        tooltip: 'Increment',
        child: const Icon(Icons.shopping_cart_sharp),backgroundColor: Colors.purple,
      ), // This trailing comma makes auto-formatting nicer for build methods

    );
  }
}
