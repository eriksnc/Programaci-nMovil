import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:proyecto1/cuadroDeTexto.dart';



class prueba extends StatefulWidget {

  const prueba({Key? key}) : super(key: key);
  @override
  _pruebaState createState() => _pruebaState();

}

class _pruebaState extends State<prueba>{
  String title = "Mi fruta favorita es ";
  String fruit = 'no lo se';

  callback(varFruit) {
    setState(() {
      fruit = varFruit;
    });
  }
    @override
    Widget build(BuildContext context){

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(title + fruit),
        ),
        body: Center(
          child: Column(
            children: [
            FruitButton(fruit: 'Apples', callback: callback),
              FruitButton(fruit: 'Oranges', callback: callback),
              FruitButton(fruit: 'Carrot', callback: callback),
              FruitButton(fruit: 'Strawberry',callback: callback)
            ],
          ),
        ),
      ),
    );
    }
}

class FruitButton extends StatelessWidget{
  final String fruit;
  final Function callback;
  FruitButton({required this.fruit, required this.callback});

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
        child: Text(fruit),
        onPressed: (){
          callback(fruit);
    },


    );

  }
}