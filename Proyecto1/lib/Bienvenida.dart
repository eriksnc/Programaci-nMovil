
import 'package:proyecto1/Control_Almacenamiento.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

/// Segunda clase
class Mandar extends StatefulWidget{

  @override
  _MandarState createState() => _MandarState();
}


class _MandarState extends State<Mandar>{

  String? pasword = ControlAlmacenamiento.prefs.getString('Password');
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar:AppBar (
          title: Text('Bienvenida'),
        ),
        body: Center
          (

          child: Column
            (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>
            [
              (pasword == "1234") ?
              /// Cuadro que encierra al texto
              Container(
                padding: const EdgeInsets.all(50.0),
                decoration: BoxDecoration(
                  border: Border.all(width: 7.5, color: Colors.deepPurpleAccent),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),

                /// Texto que imprime los datos ingresados
                child: Text(
                  'Hola '+ (ControlAlmacenamiento.prefs.getString('Nombre') ?? 'Desconocido') +"!"+ "\nBienvenido :)",

                  style: TextStyle(
                    fontSize: 50,
                    fontFamily: 'SpaceMono',
                    backgroundColor: Colors.lightBlueAccent,

                  ),
                ),
              )
            : Text(
                  'Hola logeate por favor'
              ),
              (pasword == "1234") ?
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Image.asset('images/WakuWaku.png'),
                  Image.network(
                    'https://th.bing.com/th/id/R.11b61ab967822761fe4e6665cb61273a?rik=t5eT5%2fiYMsBVqg&pid=ImgRaw&r=0',
                    scale: 4, height: 300,
                  )
                ],
              )
                  : Text(
                  ''
              ),
            ],
          ),
        )
    );

  }
}
