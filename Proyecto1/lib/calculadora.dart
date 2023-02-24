import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

//
// Widget con estado
class calculadora extends StatefulWidget {
  const calculadora({Key? key}) : super(key: key);
  // Como se esta pidiendo el titulo este se debe declarar como final

  @override
  _calculadora createState() => _calculadora();
}

// Se cambia el estado de la vista de la App
class _calculadora extends State<calculadora> {
  String _numero = "";

  void _vaciar() {
    // Actualizar el estado con Set State
    setState(() {
      _numero = "";
    });
  }
  void _cero() {
    setState(() {
      _numero += "0";
    });
  }
  void _uno() {
    setState(() {
      _numero += "1";
    });
  }
  void _dos() {
    setState(() {
      _numero += "2";
    });
  }
  void _tres() {
    setState(() {
      _numero += "3";
    });
  }
  void _cuatro() {
    setState(() {
      _numero += "4";
    });
  }
  void _cinco() {
    setState(() {
      _numero += "5";
    });
  }
  void _seis() {
    setState(() {
      _numero += "6";
    });
  }
  void _siete() {
    setState(() {
      _numero += "7";
    });
  }
  void _ocho() {
    setState(() {
      _numero += "8";
    });
  }
  void _nueve() {
    setState(() {
      _numero += "9";
    });
  }
  void _multiplicacion() {
    setState(() {
      _numero += "*";
    });
  }
  void _division() {
    setState(() {
      _numero += "/";
    });
  }
  void _suma() {
    setState(() {
      _numero += "+";
    });
  }
  void _resta() {
    setState(() {
      _numero += "-";
    });
  }
  void _punto() {
    setState(() {
      _numero += ".";
    });
  }
  void _resultado() {
    setState(() {
      _numero += " FIN ";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// BOTONES
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_numero'
              , style: TextStyle(fontSize: 35),
            ),

            /// PRIMERA FILA
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: <FloatingActionButton>[
                    FloatingActionButton(
                      onPressed: _uno,
                      tooltip: 'Increment',
                      child: const Text("1"), backgroundColor: Colors.blue,
                    ),
                  ],
                ),
                Column(
                  children: <FloatingActionButton>[
                    FloatingActionButton(
                        onPressed: _dos,
                        child: const Text("2")
                    ),

                  ],
                ),
                Row(
                  children: <FloatingActionButton>[
                    FloatingActionButton(
                        onPressed: _tres,
                        child: const Text("3")
                    ),
                  ],
                ),
                Row(
                  children: <FloatingActionButton>[
                    FloatingActionButton(
                        onPressed: _multiplicacion,
                        child: const Text("*")
                    ),
                  ],
                ),
              ],
            ),

            /// SEGUNDA FILA
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: <FloatingActionButton>[
                    FloatingActionButton(
                      onPressed: _cuatro,
                      tooltip: 'Increment',
                      child: const Text("4"), backgroundColor: Colors.blue,
                    ),
                  ],
                ),
                Column(
                  children: <FloatingActionButton>[
                    FloatingActionButton(
                        onPressed: _cinco,
                        child: const Text("5")
                    ),

                  ],
                ),
                Row(
                  children: <FloatingActionButton>[
                    FloatingActionButton(
                        onPressed: _seis,
                        child: const Text("6")
                    ),
                  ],
                ),
                Row(
                  children: <FloatingActionButton>[
                    FloatingActionButton(
                        onPressed: _resta,
                        child: const Text("-")
                    ),
                  ],
                ),
              ],
            ),

            /// TERCERA FILA
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: <FloatingActionButton>[
                    FloatingActionButton(
                      onPressed: _siete,
                      tooltip: 'Increment',
                      child: const Text("7"), backgroundColor: Colors.blue,
                    ),
                  ],
                ),
                Column(
                  children: <FloatingActionButton>[
                    FloatingActionButton(
                        onPressed: _ocho,
                        child: const Text("8")
                    ),

                  ],
                ),
                Row(
                  children: <FloatingActionButton>[
                    FloatingActionButton(
                        onPressed: _nueve,
                        child: const Text("9")
                    ),
                  ],
                ),
                Row(
                  children: <FloatingActionButton>[
                    FloatingActionButton(
                        onPressed: _suma,
                        child: const Text("+")
                    ),
                  ],
                ),
              ],
            ),

            /// CUARTA FILA
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: <FloatingActionButton>[
                    FloatingActionButton(
                      onPressed: _cero,
                      tooltip: 'Increment',
                      child: const Text("0"), backgroundColor: Colors.blue,
                    ),
                  ],
                ),
                Column(
                  children: <FloatingActionButton>[
                    FloatingActionButton(
                        onPressed: _punto,
                        child: const Text(".")
                    ),

                  ],
                ),
                Row(
                  children: <FloatingActionButton>[
                    FloatingActionButton(
                        onPressed: _resultado,
                        child: const Text("=")
                    ),
                  ],
                ),
                Row(
                  children: <FloatingActionButton>[
                    FloatingActionButton(
                        onPressed: _division,
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
        child: const Icon(Icons.delete), backgroundColor: Colors.red,
      ), // This trailing comma makes auto-formatting nicer for build methods

    );
  }
}